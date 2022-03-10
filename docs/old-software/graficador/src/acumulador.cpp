#include "header.h"

float acumular(FILE *f, time_t desde, time_t hasta)
{
    struct PowerMikeData d;
    float acc = 0;
    fseek(f, 0, SEEK_SET); //ir al inicio.
    do
    {
        fread(&d, sizeof(struct PowerMikeData), 1, f);
    } while (!feof(f) && d.timestamp < desde);

    if (feof(f) || d.timestamp >= hasta)
        return 0;
    
    do
    {
        acc += d.consumo;
        fread(&d, sizeof(struct PowerMikeData), 1, f);
    } while (!feof(f) && d.timestamp < hasta);
    return acc;
}
