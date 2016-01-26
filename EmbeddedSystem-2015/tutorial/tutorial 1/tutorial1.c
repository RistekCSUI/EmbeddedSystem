#include <avr/io.h>


int main() {
    
    // set data direction untuk PB0 sebagai output
    DDRB |= _BV(0);

    // set data direction untuk PB1 sebagai input 
    DDRB &= ~(_BV(1));

    // aktifkan pull-up resistor di PB1
    PORTB |= _BV(1);

    while(1) {
        if(bit_is_set(PINB, 1)) {
            // jika kondisi di PB1 adalah Weak-High (H), terbaca sebagai 1
            // set PB0 dengan Strong-Low (0)
            PORTB |= _BV(0);

        } else { 
            // jika kondisi di PB1 adalah Strong-Low (0), terbaca sebagai 0
            // set PB0 dengan String-Hig (1)
            PORTB &= ~(_BV(0));
        }

    }

}
