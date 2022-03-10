#include "relays.h"

#include <Arduino.h>

#include "gpio.h"

void setRelay(enum RELAYS relay, bool on) {
    digitalWrite(relay == RELAY1 ? PIN_RELAY1 : PIN_RELAY2, on);
}

bool getRelay(enum RELAYS relay) {
    return digitalRead(relay == RELAY1 ? PIN_RELAY1 : PIN_RELAY2);
}