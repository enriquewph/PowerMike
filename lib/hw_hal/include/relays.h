#ifndef HALRELAYS_H
#define HALRELAYS_H

enum RELAYS {
    RELAY1,
    RELAY2
};

void setRelay(enum RELAYS relay, bool on);
bool getRelay(enum RELAYS relay);

#endif