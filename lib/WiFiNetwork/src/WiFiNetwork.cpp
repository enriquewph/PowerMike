#include "WiFiNetwork.h"

#include <EEPROM.h>
#include <coredecls.h>

WiFiNetwork::WiFiNetwork(bool useWPS, bool useSmartConfig, uint8_t storage_size, const char *mDNSname) {
    _useWPS = useWPS;
    _useSmartConfig = useSmartConfig;
    _storage = new WiFiStorage(storage_size);
    _mDNSname = mDNSname;
}

NetworkError WiFiNetwork::begin(uint32_t timeout) {
    NetworkError result;
    Serial.println("Starting WiFi...");
    WiFi.mode(WIFI_STA);
    delay(3000);

    Serial.println("Loading WiFi Credentials...");
    _storage->begin();

    if (_storage->networkStored()) {
        result = connectToSavedNetwork();
        if (result == NetworkError::Ok)
            return result;
    }

    Serial.println("No credentials available, waiting for WiFi Setup...");
    if (_useSmartConfig)
        WiFi.beginSmartConfig();
    // if (_useWPS)
    //     WiFi.beginWPSConfig();
    uint32_t timeout_mark = millis() + timeout;
    while (1) {
        if (WiFi.smartConfigDone()) {
            Serial.println("SmartConfig Success");
            _storage->saveNetwork(0, WiFi.SSID().c_str(), WiFi.psk().c_str());
            return NetworkError::Ok;
        }

        if (millis() >= timeout_mark) {
            Serial.println("Connection/Scan timed out...");
            WiFi.stopSmartConfig();
            WiFi.mode(WIFI_OFF);
            return NetworkError::Timeout;
        }
    }
}

NetworkError WiFiNetwork::connectToSavedNetwork() {
    Serial.println("Connecting to stored network...");
    for (uint8_t i = 0; i < _storage->getNumberOfCredentials(); i++)
        if (_storage->getNetwork(i)->status == WiFiStorage::EEPROM_Status::Initialized)
            _wifiMulti.addAP(_storage->getNetwork(i)->ssid, _storage->getNetwork(i)->password);

    uint32_t timeout_mark = millis() + (WIFI_SCAN_TIMEOUT_MS) + (WIFI_CONNECT_TIMEOUT_MS * _storage->getNumberOfCredentials()) + 5000;
    wl_status_t status;
    while (1) {
        status = _wifiMulti.run();

        switch (status) {
            case WL_CONNECTED:
                Serial.println("Connected.");
                return NetworkError::Ok;
            case WL_CONNECT_FAILED:
                Serial.println("Connection failed");
                return NetworkError::Connect_Fail;
            case WL_WRONG_PASSWORD:
                Serial.println("Wrong Password");
                return NetworkError::Wrong_Password;
            case WL_NO_SSID_AVAIL:
                Serial.println("No networks found");
                return NetworkError::No_Ap_Found;
            default:
                break;
        }

        if (millis() >= timeout_mark) {
            Serial.println("Connection/Scan timed out...");
            return NetworkError::Timeout;
        }

        esp_yield();
    }
}