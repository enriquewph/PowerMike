/**
 * @file hal.cpp
 * @author Enrique Walter Philippeaux (enriquewph@gmail.com)
 * @brief Contiene la funcion para inicializar la capa HAL del dispositivo.
 * @version 0.1
 * @date 2021-05-31
 *
 */

#include <Arduino.h>

#include "hw_hal.h"

void hal_init() {
    hal_adc_init();
}