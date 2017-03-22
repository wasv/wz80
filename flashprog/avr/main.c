#include <avr/io.h>
#include <util/delay.h>
//#include "USART.h"


#define BV(bit) (1 << bit)
#define set_bit(reg,bit) reg |= BV(bit)
#define clear_bit(reg,bit) reg &= ~BV(bit)
#define toggle_bit(reg,bit) reg ^= BV(bit)

#define WE      PD4 // 4 (on Arduino w/ ATMega328)
#define CE      PD5 // 5
#define SRCLK   PD6 // 6
#define RCLK    PD7 // 7

#define DATA    PB0 // 8
#define ADDRL   PB1 // 9
#define ADDRH   PB2 // 10

int main(void) {
    // --- Init ---
    DDRB = BV(DATA) || BV(ADDRL) || BV(ADDRH);
    DDRD = BV(WE) || BV(CE) || BV(SRCLK) || BV(RCLK);


    set_bit(PORTD,RCLK);
    _delay_ms(500);
    // --- Main Loop ---
    while(1) {
        set_bit(PORTD,SRCLK);
        clear_bit(PORTD,RCLK);

        set_bit(PORTD,WE);
        clear_bit(PORTD,CE);

        _delay_ms(5);

        toggle_bit(PORTB,DATA);
        toggle_bit(PORTB,ADDRL);
        toggle_bit(PORTB,ADDRH);

        _delay_ms(5);

        clear_bit(PORTD,SRCLK);
        set_bit(PORTD,RCLK);

        clear_bit(PORTD,WE);
        set_bit(PORTD,CE);
        _delay_ms(5);
    }

    return 0;
}
