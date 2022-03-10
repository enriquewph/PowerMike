#ifndef HEADER_H
#define HEADER_H
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <iostream>
#include "math.h"


#define DATAFILENAME "historico.dat"

#define rayademenu "--------------------------------------\n"

struct PowerMikeData
{
    uint32_t timestamp;
    float consumo;
};

extern const char *dia[];
extern const char *meses[];
extern int diasXmes[12][2];

float acumular(FILE *f, time_t desde, time_t hasta);
void dibujarBarra(int largo, float dato, const char *unidad);
void consumo_hoy(FILE *f);
void consumo_dia(FILE *f);
void consumo_semana(FILE *f);
void consumo_mes(FILE *f);
void consumo_anual(FILE *f);

#endif