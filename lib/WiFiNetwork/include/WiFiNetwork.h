#ifndef NETWORK_H
#define NETWORK_H

#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <ESP8266WiFiMulti.h>
#include <ESP8266mDNS.h>

#include "NetworkError.h"
#include "WiFiStorage.h"

class WiFiNetwork {
   public:
    WiFiNetwork(bool useWPS, bool useSmartConfig, uint8_t storage_size, const char *mDNSname = nullptr);

    ~WiFiNetwork();

    NetworkError begin(uint32_t timeout = 120000ul);

    NetworkError getStatus();

    NetworkError end();

   private:
    NetworkError connectToSavedNetwork();

    ESP8266WiFiMulti _wifiMulti;  // Create an instance of the ESP8266WiFiMulti class, called 'wifiMulti'
    bool _useWPS;
    bool _useSmartConfig;
    const char *_mDNSname;
    WiFiStorage *_storage;
};

#endif