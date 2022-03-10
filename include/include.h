#ifndef INCLUDE_H
#define INCLUDE_H
#include <Arduino.h>

// libs
#include <adc.h>
#include <hw_hal.h>
#include <rms.h>

// ota.cpp
void ota_init();
void ota_loop();

#endif