#include "include.h"

// Otros
#include <ArduinoOTA.h>
#include <ESP8266WiFi.h>
#include <ESP8266mDNS.h>
#include <WiFiUdp.h>

void ota_init() {
    int cnt = 0;

    WiFi.mode(WIFI_STA);

    while (WiFi.status() != WL_CONNECTED) {
        delay(500);
        Serial.print(".");
        if (cnt++ >= 10) {
            WiFi.beginSmartConfig();
            while (1) {
                delay(1000);
                if (WiFi.smartConfigDone()) {
                    Serial.println("SmartConfig Success");
                    break;
                }
            }
        }
    }

    Serial.println("");
    Serial.println("");

    WiFi.printDiag(Serial);

    if (!MDNS.begin("powermike.local")) {
        Serial.println("Error iniciando mDNS");
        delay(5000);
        ESP.restart();
    }
    Serial.println("mDNS iniciado");

    // Port defaults to 8266
    // ArduinoOTA.setPort(8266);

    // Hostname defaults to esp8266-[ChipID]
    ArduinoOTA.setHostname("powermike");

    // No authentication by default
    // ArduinoOTA.setPassword("admin");

    // Password can be set with it's md5 value as well
    // MD5(admin) = 21232f297a57a5a743894a0e4a801fc3
    // ArduinoOTA.setPasswordHash("21232f297a57a5a743894a0e4a801fc3");

    ArduinoOTA.onStart([]() {
        detachInterrupt(digitalPinToInterrupt(13));
        String type;
        if (ArduinoOTA.getCommand() == U_FLASH) {
            type = "sketch";
        } else {  // U_FS
            type = "filesystem";
        }

        // NOTE: if updating FS this would be the place to unmount FS using FS.end()
        Serial.println("Start updating " + type);
    });
    ArduinoOTA.onEnd([]() {
        Serial.println("\nEnd");
    });
    ArduinoOTA.onProgress([](unsigned int progress, unsigned int total) {
        Serial.printf("Progress: %u%%\r", (progress / (total / 100)));
    });
    ArduinoOTA.onError([](ota_error_t error) {
        Serial.printf("Error[%u]: ", error);
        if (error == OTA_AUTH_ERROR) {
            Serial.println("Auth Failed");
        } else if (error == OTA_BEGIN_ERROR) {
            Serial.println("Begin Failed");
        } else if (error == OTA_CONNECT_ERROR) {
            Serial.println("Connect Failed");
        } else if (error == OTA_RECEIVE_ERROR) {
            Serial.println("Receive Failed");
        } else if (error == OTA_END_ERROR) {
            Serial.println("End Failed");
        }
    });
    ArduinoOTA.begin();
    Serial.println("Ready");
    Serial.print("IP address: ");
    Serial.println(WiFi.localIP());
}

void ota_loop() {
    ArduinoOTA.handle();
}