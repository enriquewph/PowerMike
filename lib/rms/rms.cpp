#include "rms.h"

#include "math.h"

Rms::Rms(uint16_t sampleSize) {
    _index_max = sampleSize;
    _index = 0;
    dataPtr = new int[_index_max];
}
Rms::~Rms() {
    delete[] dataPtr;
    _index = 0;
}
void Rms::addSample(int16_t d) {
    dataPtr[_index++] = d * d;
    if (_index == _index_max)
        _index--;  // Prevenir un overflow.
}
float Rms::getRms() {
    float mean;
    for (uint16_t i = 0; i < _index; i++)
        mean += dataPtr[i];
    mean /= _index + 1;
    return sqrt(mean);
}
void Rms::clear() {
    _index = 0;
}