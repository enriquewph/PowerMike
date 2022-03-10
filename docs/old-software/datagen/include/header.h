#ifndef HEADER_H
#define HEADER_H

#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>

#define DATAFILENAME "historico.dat"
struct PowerMikeData
{
    uint32_t timestamp;
    float consumo;
};

#endif