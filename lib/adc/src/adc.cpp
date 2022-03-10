#include "adc.h"

#include <Wire.h>

Ads1015::Ads1015(TwoWire &i2c_port, uint8_t i2c_addr) {
    _i2c_port = &i2c_port;
    _i2c_addr = i2c_addr;
}

Ads1015::BeginResult Ads1015::begin(bool fast_mode) {
    _i2c_port->setClock(fast_mode ? 800000u : 400000u);
    _i2c_port->begin();
    _cfg_reg = ADS1015_CFG_OS_NO |
               ADS1015_CFG_PGA_2 |
               ADS1015_CFG_MODE_CONT |
               ADS1015_CFG_RATE_3300HZ |
               ADS1015_CFG_CPOL_ACTVHI |
               ADS1015_CFG_CQUE_1CONV;

    Serial.printf("cfg_reg: 0x%04X - ", _cfg_reg);
    for (int i = 0; i < 16; i++) {
        Serial.printf("%u", (_cfg_reg & 0x8000) >> 15);
        _cfg_reg <<= 1;
    }
    Serial.printf("\n");

    pollCorriente();

    // Con estos 2 registros, el ADC usa la salida ALERT/RDY como alerta de conversion terminada.
    writeReg(ADS1015_ADDR_PTR_HITH_REG, 0x8000u);
    writeReg(ADS1015_ADDR_PTR_LOTH_REG, 0x0000u);

    return connected() ? Ok : NotFound;
}

int16_t Ads1015::getReading() {
    uint16_t ret = readReg(ADS1015_ADDR_PTR_CONV_REG) >> 4;
    if (ret > 0x07FF)
        ret |= 0xF000;
    return (int16_t)ret;
}

uint16_t Ads1015::getReadingRaw() {
    return readReg(ADS1015_ADDR_PTR_CONV_REG) >> 4;
}

void Ads1015::pollTension() {
    writeReg(ADS1015_ADDR_PTR_CONF_REG, _cfg_reg | ADS1015_CFG_MUX_DIFF_P0_N3);
}

void Ads1015::pollCorriente() {
    writeReg(ADS1015_ADDR_PTR_CONF_REG, _cfg_reg | ADS1015_CFG_MUX_DIFF_P1_N3);
}

bool Ads1015::connected() {
    _i2c_port->beginTransmission(_i2c_addr);
    return (_i2c_port->endTransmission(true) == 0);
}

uint16_t Ads1015::readReg(uint8_t addr_ptr) {
    _i2c_port->beginTransmission(_i2c_addr);
    _i2c_port->write(addr_ptr);
    _i2c_port->endTransmission(false);
    _i2c_port->requestFrom(_i2c_addr, 2u);
    return (_i2c_port->read() << 8 | _i2c_port->read());
}

void Ads1015::writeReg(uint8_t addr_ptr, uint16_t reg) {
    _i2c_port->beginTransmission(_i2c_addr);
    _i2c_port->write(addr_ptr);
    _i2c_port->write((uint8_t)(reg >> 8));
    _i2c_port->write((uint8_t)(reg & 0xFF));
    _i2c_port->endTransmission(true);
}