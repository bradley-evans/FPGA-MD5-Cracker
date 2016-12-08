#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <math.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/eeprom.h>
#include <avr/portpins.h>
#include <avr/pgmspace.h>

//FreeRTOS include files
#include "FreeRTOS.h"
#include "task.h"
#include "croutine.h"

// Lab Specific
#include "lcd.h"
#include "bit.h"
#include "keypad.h"

// Definitions
#define FPGA_DDR    PORTA
#define AVR_CLK     0
#define AVR_EN      1
#define AVR_IN      2
#define AVR_RST     3
#define MD5_RUN     4
#define MD5_RST     5

unsigned char testhash[32] =    "875f26fdb1cecf20ceb4ca028263dec6";

void transmitToFPGA(unsigned char hash[32]) {

    // reset the FPGA
    SET_BIT(FPGA_DDR,AVR_EN); 
    SET_BIT(FPGA_DDR,MD5_RST);
    delay_ms(1);
    CLR_BIT(FPGA_DDR,AVR_EN); 
    CLR_BIT(FPGA_DDR,MD5_RST);
    delay_ms(1);

    // convert the characters to their corresponding hex values
    unsigned char hash_hex[32];
    for (unsigned char i=0; i<32; i++) {
        switch (hash[i]) {
            case '0': hash_hex[i] = 0x00; break;
            case '1': hash_hex[i] = 0x01; break;
            case '2': hash_hex[i] = 0x02; break;
            case '3': hash_hex[i] = 0x03; break;
            case '4': hash_hex[i] = 0x04; break;
            case '5': hash_hex[i] = 0x05; break;
            case '6': hash_hex[i] = 0x06; break;
            case '7': hash_hex[i] = 0x07; break;
            case '8': hash_hex[i] = 0x08; break;
            case '9': hash_hex[i] = 0x09; break;
            case 'A': hash_hex[i] = 0x0a; break;
            case 'B': hash_hex[i] = 0x0b; break;
            case 'C': hash_hex[i] = 0x0c; break;
            case 'D': hash_hex[i] = 0x0d; break;
            case 'E': hash_hex[i] = 0x0e; break;
            case 'F': hash_hex[i] = 0x0f; break;
            case 'a': hash_hex[i] = 0x0a; break;
            case 'b': hash_hex[i] = 0x0b; break;
            case 'c': hash_hex[i] = 0x0c; break;
            case 'd': hash_hex[i] = 0x0d; break;
            case 'e': hash_hex[i] = 0x0e; break;
            case 'f': hash_hex[i] = 0x0f; break;
            default:  hash_hex[i] = 0x00; break;
        }
    }
    // convert the characters to thier corresponding binary values
    // least significant bit first
    unsigned char hash_bin[128];
    unsigned char j = 0;
    for (signed char i=31; i>=0; i--) {
        hash_bin[j] = (hash_hex[i] & 0x01) >> 0; j++;
        hash_bin[j] = (hash_hex[i] & 0x02) >> 1; j++;
        hash_bin[j] = (hash_hex[i] & 0x04) >> 2; j++;
        hash_bin[j] = (hash_hex[i] & 0x08) >> 3; j++;
    }

    // prepare to transmit
    CLR_BIT(FPGA_DDR,AVR_CLK);         	// AVR_CLK = 0
    delay_ms(1);
    CLR_BIT(FPGA_DDR,AVR_EN);          	// AVR_EN = 0
    delay_ms(1);
    CLR_BIT(FPGA_DDR,AVR_IN);        	// AVR_IN = 0
    delay_ms(1);
    // perform transmission
    for (unsigned char i=0; i<128; i++) {
        CLR_BIT(FPGA_DDR,AVR_CLK);     	// AVR_CLK = 0
        delay_ms(1);
        SET_BIT(FPGA_DDR,AVR_EN);      	// AVR_EN = 1
        delay_ms(1);
        if (hash_bin[i] == 0) {         // AVR_IN = hash_bin[i]
            CLR_BIT(FPGA_DDR,AVR_IN);
        } else {
            SET_BIT(FPGA_DDR,AVR_IN);
        }
        delay_ms(1);
        SET_BIT(FPGA_DDR,AVR_CLK);      // AVR_CLK = 1
        delay_ms(1);
    }

    // end transmission
    CLR_BIT(FPGA_DDR,AVR_CLK);         	// AVR_CLK = 0
    delay_ms(1);
    CLR_BIT(FPGA_DDR,AVR_EN);          	// AVR_EN = 0
    delay_ms(1);
    CLR_BIT(FPGA_DDR,AVR_IN);        	// AVR_IN = 0
    delay_ms(10);

    // test run

    SET_BIT(FPGA_DDR,MD5_RUN); 
}

int main(void)
{
    DDRA = 0x3F; PORTA = 0xC0;      // Set PORTA to output(0-5) input (6-7).
    DDRB = 0xF0; PORTB = 0x0F;      // Set PORTB to input (0-3) and output (4-7)
    DDRC = 0xFF; PORTC = 0x00;      // Set PORTC to output
    DDRD = 0xF0; PORTD = 0x0F;      // Set PORTD to a ready state for a keypad
 
    
    LCD_DisplayString(1,testhash);
    transmitToFPGA(testhash);

    
    return 0;
}