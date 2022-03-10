#ifndef HEADER_H
#define HEADER_H

#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>

#include "termset.h"

#define DATAFILENAME "historico.dat"

//data.cpp
float getData(int fd);

struct PowerMikeData
{
    uint32_t timestamp;
    float consumo;
};

#endif