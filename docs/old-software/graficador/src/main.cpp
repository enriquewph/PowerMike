#include "header.h"

const char *dia[] = {"Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"};
const char *meses[] = {"Enero", "Febrero ", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"};
int diasXmes[12][2] = {{31, 31}, {28, 29}, {31, 31}, {30, 30}, {31, 31}, {30, 30}, {31, 31}, {31, 31}, {30, 30}, {31, 31}, {30, 30}, {31, 31}}; //diasXmes[mes][bisiesto]

int main()
{
    FILE *f = fopen(DATAFILENAME, "rb");
    if (f == NULL)
    {
        printf("ERROR: No se pudo abrir el archivo " DATAFILENAME "\n");
        return -1;
    }

    int opcion;
    do
    {
        printf(rayademenu);
        printf("\tMENU\n");
        printf(rayademenu);
        printf(" <1> - Ver consumo de las ultimas 24hs\n");
        printf(" <2> - Ver consumo del ultimo dia\n");
        printf(" <3> - Ver consumo del ultimo semana\n");
        printf(" <4> - Ver consumo del ultimo mes\n");
        printf(" <5> - Ver consumo del ultimo año\n");
        printf(" <6> - Salir\n\n");
        printf("Elija una opcion: ");
        scanf("%d", &opcion);
        switch (opcion)
        {
        case 1:
            consumo_hoy(f);
            break;
        case 2:
            consumo_dia(f);
            break;
        case 3:
            consumo_semana(f);
            break;
        case 4:
            consumo_mes(f);
            break;
        case 5:
            consumo_anual(f);
            break;
        case 6:
            break;
        default:
            printf("Opcion no valida\n");
            break;
        }
    } while (opcion != 6);
    return 0;
}

void consumo_hoy(FILE *f)
{
    time_t t = time(0) - 3 * 3600; //Ajuste por zona horaria
    struct tm tm = *gmtime(&t);
    time_t inicio = t - (tm.tm_min * 60 + tm.tm_sec); //eliminamos minutos y segundos.
    inicio -= 24 * 3600;                              //filtramos a partir de hace 24hs
    tm = *gmtime(&inicio);
    int j = tm.tm_hour;
    //Generar datos.
    float datos[24];
    for (int i = 0; i < 24; i++)
        datos[i] = acumular(f, inicio + i * 3600, inicio + (i + 1) * 3600);

    //Determinar maximo.
    float max = datos[0];
    for (int i = 1; i < 24; i++)
        if (datos[i] >= max)
            max = datos[i];

    //Dibujar datos.
    printf("\n\nConsumo para los dias %i-%i de %s de %i\n", tm.tm_mday, tm.tm_mday + 1, meses[tm.tm_mon], tm.tm_year + 1900);
    for (int i = 0; i < 24; i++)
    {
        printf("%2ihs - %2ihs:\t", j, j + 1);
        dibujarBarra((datos[i] / max) * 40, datos[i], "W/h");
        if (++j == 24)
            j = 0;
    }
}

void consumo_dia(FILE *f)
{
    time_t t = time(0) - 3 * 3600; //Ajuste por zona horaria
    struct tm tm = *gmtime(&t);
    time_t inicio = t - (tm.tm_min * 60 + tm.tm_sec); //eliminamos minutos y segundos.
    inicio -= (tm.tm_hour + 24) * 3600;               //filtramos a partir de las 0hs de ayer.
    tm = *gmtime(&inicio);
    //Generar datos.
    float datos[24];
    for (int i = 0; i < 24; i++)
        datos[i] = acumular(f, inicio + i * 3600, inicio + (i + 1) * 3600);

    //Determinar maximo.
    float max = datos[0];
    for (int i = 1; i < 24; i++)
        if (datos[i] >= max)
            max = datos[i];

    //Dibujar datos.
    printf("\n\nConsumo para el dia %i de %s de %i\n", tm.tm_mday, meses[tm.tm_mon], tm.tm_year + 1900);
    for (int i = 0; i < 24; i++)
    {
        printf("%2ihs - %2ihs:\t", i, i + 1);
        dibujarBarra((datos[i] / max) * 40, datos[i], "W/h");
    }
}

void consumo_semana(FILE *f)
{
    time_t t = time(0) - 3 * 3600; //Ajuste por zona horaria
    struct tm tm = *gmtime(&t);
    time_t inicio = t - (tm.tm_hour * 3600 + tm.tm_min * 60 + tm.tm_sec); //eliminamos horas, minutos y segundos.
    inicio -= (tm.tm_wday + 7) * 24 * 3600;                               //Arrancamos desde el lunes de la semana pasada.
    int j = tm.tm_wday;
    //Generar datos.
    float datos[7];
    for (int i = 0; i < 7; i++)
        datos[i] = acumular(f, inicio + i * 24 * 3600, inicio + (i + 1) * 24 * 3600);

    //Determinar maximo.
    float max = datos[0];
    for (int i = 1; i < 7; i++)
        if (datos[i] >= max)
            max = datos[i];

    //Dibujar datos.
    printf("\n\nConsumo para la semana pasada\n");
    for (int i = 0; i < 7; i++)
    {
        printf("%-14s\t", dia[j]);
        dibujarBarra((datos[i] / max) * 40, datos[i] / 1000.0f, "KW/h");
        if (++j == 7)
            j = 0;
    }
}

void consumo_mes(FILE *f)
{
    time_t t = time(0) - 3 * 3600; //Ajuste por zona horaria
    struct tm tm = *gmtime(&t);
    time_t inicio = t - (tm.tm_hour * 3600 + tm.tm_min * 60 + tm.tm_sec); //eliminamos horas, minutos y segundos.
    inicio -= (tm.tm_mday) * 24 * 3600;                                   //Arrancamos desde el dia 1 del mes.
    int mes = tm.tm_mon;
    if (--mes < 0)
    {
        mes = 11;
        tm.tm_year--;
    }
    int dias_del_mes = diasXmes[mes][((tm.tm_year % 4 == 0) && ((tm.tm_year % 400 == 0) || (tm.tm_year % 100 != 0))) ? 1 : 0];
    inicio -= (dias_del_mes) * 24 * 3600;                                 //Arrancamos desde el dia 1 del mes anterior.

    //Generar datos.
    float datos[dias_del_mes];
    for (int i = 0; i < dias_del_mes; i++)
        datos[i] = acumular(f, inicio + i * 24 * 3600, inicio + (i + 1) * 24 * 3600);

    //Determinar maximo.
    float max = datos[0];
    for (int i = 1; i < dias_del_mes; i++)
        if (datos[i] >= max)
            max = datos[i];

    printf("\n\nConsumo para el mes de %s de %i\n", meses[mes], tm.tm_year + 1900);
    //Dibujar datos.
    int j = ((inicio / 86400) + 4) % 7;
    for (int i = 0; i < dias_del_mes; i++)
    {
        printf("%-14s %2i:\t", dia[j++], i + 1);
        if (j > 6)
            j = 0;
        dibujarBarra((datos[i] / max) * 40, datos[i] / 1000.0f, "KW/h");
    }
}

void consumo_anual(FILE *f)
{
    time_t t = time(0) - 3 * 3600; //Ajuste por zona horaria
    struct tm tm = *gmtime(&t);
    time_t inicio = t - ((tm.tm_yday) * 24 * 3600 + tm.tm_hour * 3600 + tm.tm_min * 60 + tm.tm_sec); //Arrancamos desde el dia 1 del año.
    tm = *gmtime(&inicio);
    tm.tm_year--;
    //Recargamos tm
    inicio = mktime(&tm);
    tm = *gmtime(&inicio);

    int bisiesto = ((tm.tm_year % 4 == 0) && ((tm.tm_year % 400 == 0) || (tm.tm_year % 100 != 0))) ? 1 : 0;

    //Generar datos.
    float datos[12];
    time_t finDeMes;
    for (int i = 0; i < 12; i++)
    {
        finDeMes = diasXmes[i][bisiesto] * 24 * 3600;
        datos[i] = acumular(f, inicio, inicio + finDeMes);
        inicio += finDeMes;
    }

    //Determinar maximo.
    float max = datos[0];
    for (int i = 1; i < 12; i++)
        if (datos[i] >= max)
            max = datos[i];

    int j = 0;
    printf("\n\nConsumo para el año %i\n", tm.tm_year + 1900);
    //Dibujar datos.
    for (int i = 0; i < 12; i++)
    {
        printf("%-14s\t", meses[j]);
        dibujarBarra((datos[i] / max) * 40, datos[i] / 1000.0f, "KW/h");
        if (++j == 12)
            j = 0;
    }
}

void dibujarBarra(int largo, float dato, const char *unidad)
{
    for (int i = 0; i < largo; i++)
        printf("■");
    printf(" <%.1f %s>", dato, unidad);
    printf("\n");
}