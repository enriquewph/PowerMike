#include "header.h"

//Funcion para obtener el dato de potencia del puerto serie.
float getData(int fd)
{
    static char buffer[32];
    int s;
    for (int i = 0; i < 32; i++)
    {
        s = read(fd, &buffer[i], 1);
        if (s == 0 || s == -1)
        {
            break;
        }
        else if (buffer[i] == '\n')
        {
            buffer[i] == '\0';
            break;
        }
    }
    
    return atof(buffer);
}