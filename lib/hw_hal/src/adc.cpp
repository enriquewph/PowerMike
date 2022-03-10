/**
 * @file adc.cpp
 * @author Enrique Walter Philippeaux (enriquewph@gmail.com)
 * @brief Funciones para inicializar y leer el ADC
 * @version 0.1
 * @date 2021-05-31
 *
 */
#include <Arduino.h>

#include "hadc.h"

void hal_adc_init() {
    // adc1_config_width(ADC_WIDTH_BIT_12);
}

uint16_t hal_adc_get() {
    uint64_t prom = 0;
    for (int i = 0; i < HAL_ADC_PROM_READING; i++)
        prom += analogRead(0);

    return (prom / HAL_ADC_PROM_READING);
}