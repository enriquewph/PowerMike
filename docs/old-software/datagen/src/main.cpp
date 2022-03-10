#include "header.h"

/* diasXmes[mes][bisiesto]
 */
int diasXmes[12][2] = {{31, 31}, {28, 29}, {31, 31}, {30, 30}, {31, 31}, {30, 30}, {31, 31}, {31, 31}, {30, 30}, {31, 31}, {30, 30}, {31, 31}};

int main(int argc, char *argv[])
{
    FILE *f = fopen(DATAFILENAME, "wb");
    if (f == NULL)
    {
        printf("ERROR: No se pudo abrir/crear el archivo " DATAFILENAME "\n");
        return -1;
    }

    struct tm tm;
    struct PowerMikeData data;

    for (time_t t = 1546300860; t < 1640995200;)
    {
        tm = *gmtime(&t);
        data.timestamp = t;
        data.consumo = (1.0f * (tm.tm_hour + 1) * (tm.tm_wday + 1)) / 12;
	    fwrite(&data, sizeof(struct PowerMikeData), 1, f);
        t += 5 * 60;
    }

    fclose(f);
}