#ifndef VTRANSF_H
#define VTRANSF_H

#include <Arduino.h>

#define VTRANSF_R1 220E3  // ohm
#define VTRANSF_R2 1E3    // ohm

#define VTRANSF_GAIN (VTRANSF_R2 / VTRANSF_R1)

#endif