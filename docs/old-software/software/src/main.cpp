#include "header.h"

int main(int argc, char *argv[])
{
    
    int fd; //file descriptor
    struct termios oldtty, newtty;
    char *port;
    int baud;

    if (argc < 3)
    {
        printf("ERROR: Especifique el puerto serie y los baudios.\n");
        return -1;
    }
    else
    {
        port = argv[1];
        baud = atoi(argv[2]);
    }
        

    fd = open(port, O_RDWR | O_NOCTTY | O_NDELAY);
    if (fd == -1)
    {
        printf("ERROR: No se pudo abrir el puerto %s\n", port);
        return -1;
    }
    if (termset(fd, baud, &oldtty, &newtty) == -1)
    {
        printf("ERROR: No se pudo configurar el puerto %s\n", port);
        return -1;
    }

    
	FILE *f = fopen(DATAFILENAME, "ab");
	if (f == NULL)
    {
        printf("ERROR: No se pudo abrir/crear el archivo " DATAFILENAME "\n");
		return -1;
    }
    
    struct PowerMikeData d;
    printf("Logging iniciado.\n");
    while (1)
    {
        d.consumo = getData(fd);
        d.timestamp = time(0) - 3 * 3600;
        printf("Consumo: %.3f W/h\n", d.consumo);
	    fseek(f, 0, SEEK_END);
	    fwrite(&d, sizeof(struct PowerMikeData), 1, f);
    }
    
    fclose(f);
    close(fd);
    
    return 0;
}