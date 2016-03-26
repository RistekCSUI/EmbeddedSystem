#include <avr/io.h>
#include <util/delay.h>

int main() {
	DDRA = 0xff;
	uint8_t lamp = 0xfe;
	while(1) {
		PORTA = lamp;
		_delay_ms(300);
		if(lamp == 0x7f) lamp = 0xfe;
		else             lamp = (lamp << 1) | 1;
	}
}

