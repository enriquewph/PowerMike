#ifndef ADC_H
#define ADC_H

#include <Arduino.h>
#include <Wire.h>

// Datasheet del dispositivo: https://www.ti.com/lit/ds/symlink/ads1015.pdf

#define ADS1015_ADDR_PTR_CONV_REG 0x0u
#define ADS1015_ADDR_PTR_CONF_REG 0x1u
#define ADS1015_ADDR_PTR_LOTH_REG 0x2u
#define ADS1015_ADDR_PTR_HITH_REG 0x3u

#define ADS1015_CFG_OS_NO 0x8000u
#define ADS1015_CFG_OS_SINGLE 0x8000u
#define ADS1015_CFG_OS_READY 0x0000u
#define ADS1015_CFG_OS_NOTREADY 0x8000u

#define ADS1015_CFG_MODE_CONT 0x0000u
#define ADS1015_CFG_MODE_SINGLE 0x0100u

#define ADS1015_CFG_MUX_SINGLE_0 0x4000u
#define ADS1015_CFG_MUX_SINGLE_1 0x5000u
#define ADS1015_CFG_MUX_SINGLE_2 0x6000u
#define ADS1015_CFG_MUX_SINGLE_3 0x7000u
#define ADS1015_CFG_MUX_DIFF_P0_N1 0x0000u
#define ADS1015_CFG_MUX_DIFF_P0_N3 0x1000u
#define ADS1015_CFG_MUX_DIFF_P1_N3 0x2000u
#define ADS1015_CFG_MUX_DIFF_P2_N3 0x3000u

#define ADS1015_CFG_RATE_128HZ 0x0000u
#define ADS1015_CFG_RATE_250HZ 0x0020u
#define ADS1015_CFG_RATE_490HZ 0x0040u
#define ADS1015_CFG_RATE_920HZ 0x0060u
#define ADS1015_CFG_RATE_1600HZ 0x0080u
#define ADS1015_CFG_RATE_2400HZ 0x00A0u
#define ADS1015_CFG_RATE_3300HZ 0x00C0u

#define ADS1015_CFG_PGA_MASK 0x0E00u
#define ADS1015_CFG_PGA_TWOTHIRDS 0x0000u  // +/- 6.144v
#define ADS1015_CFG_PGA_1 0x0200u          // +/- 4.096v
#define ADS1015_CFG_PGA_2 0x0400u          // +/- 2.048v
#define ADS1015_CFG_PGA_4 0x0600u          // +/- 1.024v
#define ADS1015_CFG_PGA_8 0x0800u          // +/- 0.512v
#define ADS1015_CFG_PGA_16 0x0A00u         // +/- 0.256v

#define ADS1015_CFG_CMODE_TRAD 0x0000u    // Traditional comparator with hysteresis (default)
#define ADS1015_CFG_CMODE_WINDOW 0x0010u  // Window comparator
#define ADS1015_CFG_CPOL_ACTVLOW 0x0000u  // ALERT/RDY pin is low when active (default)
#define ADS1015_CFG_CPOL_ACTVHI 0x0008u   // ALERT/RDY pin is high when active
#define ADS1015_CFG_CLAT_NONLAT 0x0000u   // Non-latching comparator (default)
#define ADS1015_CFG_CLAT_LATCH 0x0004u    // Latching comparator
#define ADS1015_CFG_CQUE_1CONV 0x0000u    // Assert ALERT/RDY after one conversions
#define ADS1015_CFG_CQUE_2CONV 0x0001u    // Assert ALERT/RDY after two conversions
#define ADS1015_CFG_CQUE_4CONV 0x0002u    // Assert ALERT/RDY after four conversions
#define ADS1015_CFG_CQUE_NONE 0x0003u     // Disable the comparator and put ALERT/RDY in high state (default)

class Ads1015 {
   public:
    enum BeginResult {
        Ok,
        NotFound,
        Other
    };

    Ads1015(TwoWire &i2c_port, uint8_t i2c_addr);
    BeginResult begin(bool fast_mode);
    bool connected();
    int16_t getReading();
    uint16_t getReadingRaw();
    void pollTension();
    void pollCorriente();

   private:
    uint16_t readReg(uint8_t addr_ptr);
    void writeReg(uint8_t addr_ptr, uint16_t reg);

    bool _fast_mode;
    uint16_t _cfg_reg;
    TwoWire *_i2c_port;
    uint8_t _i2c_addr;
    uint8_t _next_reading;
};

#endif