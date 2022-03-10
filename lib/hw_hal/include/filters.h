#ifndef FILTERS_H
#define FILTERS_H

#include <Arduino.h>

/**
 * @brief Valor de la resistencia del filtro
 */
#define FILTER_R 27E3  // Ohms

/**
 * @brief Valor del capacitor del filtro
 */
#define FILTER_C 100E-9  // Farads

/**
 * @brief Frecuencia de corte del filtro
 */
#define FILTER_FC (1 / (2 * PI * FILTER_R * FILTER_C))

/**
 * @brief Macro para calcular impedancia reactiva del capacitor a determinada frecuencia.
 */
#define FILTER_XC(f) (1 / (2 * PI * f * FILTER_C))

/**
 * @brief Macro para calcular la ganancia del filtro a determinada frecuencia.
 */
#define FILTER_GAIN(f) (FILTER_XC(f) / SQRT(FILTER_R * FILTER_R + FILTER_XC(f) * FILTER_XC(f)))

#endif