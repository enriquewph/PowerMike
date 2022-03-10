/**
 * @file adc.h
 * @author Enrique Walter Philippeaux (enriquewph@gmail.com)
 * @brief Macros, definiciones y valores de calibracion para el uso del ADC.
 * @version 0.1
 * @date 2021-05-31
 *
 */

#ifndef HALADC_H
#define HALADC_H

#include <Arduino.h>

#include "gpio.h"

/**
 * @brief Voltaje de referencia para macros de conversion del ADC.
 *
 */
#define HAL_ADC_VCC_MV 3300.0f

/**
 * @brief Resolucion de 12 bits, indica 4096 divisiones.
 *
 */
#define HAL_ADC_RES 4096

/**
 * @brief Correccion porcentual para ajustar el ADC.
 *
 */
#define HAL_ADC_CORRECCION_PORCENTUAL 1.0f

/**
 * @brief Offset para ajustar el ADC.
 *
 */
#define HAL_ADC_OFFSET 0.0f

/**
 * @brief Numero de lecturas a realizar y promediar
 *
 */
#define HAL_ADC_PROM_READING 256

/**
 * @brief Inicializar adc del dispositivo.
 *
 */
void hal_adc_init();

/**
 * @brief Ejecuta HAL_ADC_PROM_READING lecturas y devuelve el promedio.
 *
 * @return uint16_t lectura
 */
uint16_t hal_adc_get();

/**
 * @brief Macro para convertir lectura de ADC en milivoltios.
 *
 */
#define ADC_GET_MV(reading) (float)(HAL_ADC_CORRECCION_PORCENTUAL * ((float)reading + HAL_ADC_OFFSET) * HAL_ADC_VCC_MV) / (HAL_ADC_RES)

/**
 * @brief Macro para convertir milivoltios en la lectura del ADC requerida.
 *
 */
#define ADC_GET_MV_REV(mV) (uint16_t)((mV) * ((HAL_ADC_RES) / (HAL_ADC_CORRECCION_PORCENTUAL * HAL_ADC_VCC_MV)) - HAL_ADC_OFFSET)

#endif