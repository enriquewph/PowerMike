#ifndef WIFISTORAGE_H
#define WIFISTORAGE_H

#include <Arduino.h>

// TODO: Compatibilizar mucho mas con WiFiMulti

class WiFiStorage {
   public:
    enum EEPROM_Status {
        Uninitialized = 0,
        Initialized = 0xAD
    };

    struct NETWORK_Data {
        char ssid[33];
        char password[65];
        uint8_t status;
    };

    WiFiStorage(uint8_t number_of_credentials) {
        _ee_initialized = 0;
        _data = nullptr;
    }
    ~WiFiStorage() {
        if (_data != nullptr)
            delete[] _data;
        _data = nullptr;
    }

    void begin();

    bool networkStored() {
        if (_data == nullptr)
            return false;
        for (size_t i = 0; i < _number_of_credentials; i++) {
            if (_data[i].status != EEPROM_Status::Initialized)
                return true;
        }
        return false;
    }

    void saveNetwork(uint8_t index, const char *ssid, const char *password);

    struct NETWORK_Data *getNetwork(uint8_t index) const {
        if (index > _number_of_credentials)
            return nullptr;
        return &(_data[index]);
    }

    uint8_t getNumberOfCredentials() const { return _number_of_credentials; }

   private:
    bool _ee_initialized;
    bool ee_load();
    void ee_save();
    uint8_t _number_of_credentials;

    enum EEPROM_Status _status;
    struct NETWORK_Data *_data;
    uint32_t _chksum;
};

#endif