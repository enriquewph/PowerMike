#include "WiFiStorage.h"

// Incluir libreria a utilizar.
#include <EEPROM.h>
#include <coredecls.h>

void WiFiStorage::begin() {
    EEPROM.begin(sizeof(uint8_t) + _number_of_credentials * sizeof(NETWORK_Data) + sizeof(uint32_t));
    _ee_initialized = 1;

    if (ee_load()) {
        memset((void *)_data, 0, _number_of_credentials * sizeof(NETWORK_Data));
        ee_save();
    }
}

void WiFiStorage::saveNetwork(uint8_t index, const char *ssid, const char *password) {
    if (index > _number_of_credentials)
        return;

    strcpy(_data[index].ssid, ssid);
    strcpy(_data[index].password, password);
    _data[index].status = EEPROM_Status::Initialized;

    ee_save();
}

/**
 * @brief Levanta datos de la memoria al almacenamiento de la clase.
 *
 * @return true Hubo un error, en el checksum, o no estaba inicializado.
 * @return false Todo OK
 */
bool WiFiStorage::ee_load() {
    if (!_ee_initialized) {
        Serial.println("WiFiStorage::ee_load() error - EEPROM Was uninitialised");
        return 1;
    }
    _status = (EEPROM_Status)EEPROM.read(0);
    _data = new NETWORK_Data[_number_of_credentials];

    for (size_t i = 0; i < _number_of_credentials; i++)
        EEPROM.get(1 + i * (sizeof(NETWORK_Data)), _data[i]);

    EEPROM.get(1 + _number_of_credentials * (sizeof(NETWORK_Data)), _chksum);
    uint32_t readChksum = crc32(_data, _number_of_credentials * sizeof(NETWORK_Data), 0xffffffff);

    if (_status != EEPROM_Status::Initialized || _chksum != readChksum)
        return 1;

    return 0;
}

void WiFiStorage::ee_save() {
    if (!_ee_initialized) {
        Serial.println("WiFiStorage::ee_save() error - EEPROM Was uninitialised");
        return;
    }

    EEPROM.put(0, ((uint8_t)EEPROM_Status::Initialized));
    for (size_t i = 0; i < _number_of_credentials; i++)
        EEPROM.put(1 + i * (sizeof(NETWORK_Data)), _data[i]);

    _chksum = crc32(_data, _number_of_credentials * sizeof(NETWORK_Data), 0xffffffff);
    EEPROM.put(1 + _number_of_credentials * (sizeof(NETWORK_Data)), _chksum);

    EEPROM.commit();
}