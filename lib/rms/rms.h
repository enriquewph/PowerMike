#ifndef RMS_H
#define RMS_H

#include <Arduino.h>

class Rms {
   public:
    Rms(uint16_t sampleSize);
    ~Rms();
    void addSample(int16_t d);
    float getRms();
    void clear();

   private:
    int *dataPtr;
    uint16_t _index_max;
    uint16_t _index;
};

#endif