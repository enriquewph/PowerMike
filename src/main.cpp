#include <Arduino.h>

#include "adc.h"
#include "rms.h"

/*
 ? Forma de la onda a medir           Mediciones de tension            Mediciones de corriente
 !      ---                              +++                               ###
 !    --   --                          ##   ##                           ++   ++
 !   -       -                        +       +                         #       #
 !  -         -                      #         #                       +         +
 ! -           -           -        +           +           +         #           #           #
 !              -         -                      #         #                       +         +
 !               -       -                        +       +                         #       #
 !                --   --                          ##   ##                           ++   ++
 !                  ---                              +++                               ###
 *
 ?    Leyenda:
 !      +: medicion realizada.
 !      i: mediciones que no realizamos.
 *    Resumen:
 *      La frecuencia de muestreo es de 3300Hz, eso nos da un total de 66 muestras por ciclo (@50hz), y como lo
 *      distribuimos al muestreo entre tension y corriente, nos queda unas 33 muestras por ciclo.
 *      Calculamos Irms y Vrms 1 vez por segundo.
*/

Ads1015 adc(Wire, 0x48);
Rms tension(5000);
Rms corriente(5000);
float consumoWh;

void adc_isr();
void printBits(uint16_t var);
unsigned long lastMillis_1s = 0;
unsigned long lastMillis_10s = 0;

void setup() {
    Serial.begin(115200);
    pinMode(2, OUTPUT);

    /* Inicializar el adc. Arrancamos midiendo tension. */
    pinMode(13, INPUT);
    Serial.printf("RDY: %u\n", (uint8_t)digitalRead(13));
    attachInterrupt(digitalPinToInterrupt(13), adc_isr, FALLING);
    uint8_t res = adc.begin(false);
    Serial.printf("Adc begin: %u\n", res);
}

IRAM_ATTR void adc_isr() {
    static bool _tension_next = 1;
    if (_tension_next) {
        adc.pollTension();
        tension.addSample(adc.getReading());
        _tension_next = 0;
    } else {
        adc.pollCorriente();
        corriente.addSample(adc.getReading());
        _tension_next = 1;
    }
}

void loop() {
    if (millis() - lastMillis_1s > 1000ul) {
        lastMillis_1s = millis();
        float potenciaRms = abs(tension.getRms() * corriente.getRms() * 0.3341843f - 15.0127778f);  // Corregido
        consumoWh += potenciaRms / 3600.0f;
        tension.clear();
        corriente.clear();
    }
    if (millis() - lastMillis_10s > 10000ul) {
        lastMillis_10s = millis();
        Serial.printf("%.5fW\n", consumoWh);
        consumoWh = 0.0f;
    }
}

void printBits(uint16_t var) {
    Serial.printf("0x%04X - ", var);
    for (int i = 0; i < 16; i++) {
        Serial.printf("%u", (var & 0x8000) >> 15);
        var <<= 1;
    }
    Serial.printf("\n");
}