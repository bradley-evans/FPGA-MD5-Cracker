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

/* GLOBAL VARIABLES */
unsigned char data;             // stores actual data for transmission

// GetKey
unsigned char keypad_input, key, press_detect;
// LcdOut
unsigned char lcd_out[32]     = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
// HashBuffering
unsigned char hash_count;
unsigned char testhash[32] =    "74B87337454200D4D33F80C4663DC5E5";
unsigned char hash_buffer[32] = "01234567890123456789012345678901";
unsigned char blankarray[32]  = "                                ";
unsigned char button_rst, button_rdy;
unsigned char hash_ready, intxfr, inrunning;
unsigned char fpga_ready;

/* GLOBAL FUNCTIONS */

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
    CLR_BIT(FPGA_DDR,AVR_CLK);          // AVR_CLK = 0
    delay_ms(1);
    CLR_BIT(FPGA_DDR,AVR_EN);           // AVR_EN = 0
    delay_ms(1);
    CLR_BIT(FPGA_DDR,AVR_IN);           // AVR_IN = 0
    delay_ms(1);
    // perform transmission
    for (unsigned char i=0; i<128; i++) {
        CLR_BIT(FPGA_DDR,AVR_CLK);      // AVR_CLK = 0
        delay_ms(1);
        SET_BIT(FPGA_DDR,AVR_EN);       // AVR_EN = 1
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
    CLR_BIT(FPGA_DDR,AVR_CLK);          // AVR_CLK = 0
    delay_ms(1);
    CLR_BIT(FPGA_DDR,AVR_EN);           // AVR_EN = 0
    delay_ms(1);
    CLR_BIT(FPGA_DDR,AVR_IN);           // AVR_IN = 0
    delay_ms(10);
}

/* LCD OUTPUT STATE MACHINE */
enum lcdout_State {lcdout_INIT,lcdout_RUN} lcdout_state;

void lcdout_init(){
    lcdout_state = lcdout_INIT;
    LCD_init();
}

void lcdout_Tick(){
    //Actions
    switch(lcdout_state){
        case lcdout_INIT:
            break;
        case lcdout_RUN:
            for (int i=0; i<32; i++) {
                lcd_out[i] = hash_buffer[i];
            }
            if (hash_ready) {
                lcd_out[28] = '[';
                lcd_out[29] = 'O';
                lcd_out[30] = 'K';
                lcd_out[31] = ']';
            }
            if (intxfr) {
                lcd_out[28] = '[';
                lcd_out[29] = 'T';
                lcd_out[30] = 'X';
                lcd_out[31] = ']';
            }
            if (inrunning) {
                lcd_out[28] = '[';
                lcd_out[29] = 'R';
                lcd_out[30] = 'N';
                lcd_out[31] = ']';
            }
            LCD_DisplayString(1,lcd_out);
            break;
        default:
            break;
    }
    //Transitions
    switch(lcdout_state){
        case lcdout_INIT:
            lcdout_state = lcdout_RUN;
            break;
        case lcdout_RUN:
            lcdout_state = lcdout_RUN;
            break;
        default:
            lcdout_state = lcdout_INIT;
            break;
    }
}
void lcdout_Task()
{
    lcdout_init();
    while (1) {
        lcdout_Tick();
        vTaskDelay(100);
    }
}

/* KEYPAD INPUT RETRIEVAL STATE MACHINE */
enum getkey_State {getkey_INIT,getkey_RUN,getkey_PRESSED} getkey_state;

void getkey_init(){
    getkey_state = getkey_INIT;
    keypad_input = '\0';
    key = '\0';
    press_detect = 0;
}

void getkey_Tick(){
    keypad_input = GetKeypadKey();
    //Actions
    switch(getkey_state){
        case getkey_INIT:
            break;
        case getkey_RUN:
            if (keypad_input != '\0') { 
                key = keypad_input;
                press_detect = 1; 
            }
            break;
        case getkey_PRESSED:
            // do nothing and wait for new input
            break;
        default:
            break;
    }
    //Transitions
    switch(getkey_state){
        case getkey_INIT:
            getkey_state = getkey_RUN;
            break;
        case getkey_RUN:
            if (keypad_input != '\0') { 
                getkey_state = getkey_PRESSED;
            } else {
                getkey_state = getkey_RUN;
            }
            break;
        case getkey_PRESSED:
            if (keypad_input == '\0') { 
                getkey_state = getkey_RUN;
            }
            break;
        default:
            getkey_state = getkey_INIT;
            break;
    }
}
void getkey_Task()
{
    getkey_init();
    while (1) {
        getkey_Tick();
        vTaskDelay(10);
    }
}

/* HASH BUFFERING STATE MACHINE */
enum hashbuff_State {hashbuff_INIT,hashbuff_RUN,hashbuff_READY,hashbuff_TXFR,hashbuff_MD5RUN,hashbuff_RST} hashbuff_state;

void hashbuff_init(){
    hashbuff_state = hashbuff_INIT;
    hash_count = 0;
    button_rst = 0;
    button_rdy = 0;
    inrunning = 0;
    intxfr = 0;
    for (int i=0; i<32; i++) {
        hash_buffer[i] = blankarray[i];
    }
}

void hashbuff_Tick(){
    button_rst = (~PINB & 0x01);
    button_rdy = (~PINB & 0x02) >> 1;
    //Actions
    switch(hashbuff_state){
        case hashbuff_INIT:
            CLR_BIT(FPGA_DDR,AVR_CLK);
            CLR_BIT(FPGA_DDR,AVR_EN);
            CLR_BIT(FPGA_DDR,AVR_IN);
            CLR_BIT(FPGA_DDR,AVR_RST);
            CLR_BIT(FPGA_DDR,MD5_RUN);
            CLR_BIT(FPGA_DDR,MD5_RST);
            break;
        case hashbuff_RUN:
            if (press_detect) {
                hash_buffer[hash_count] = key;
                hash_count = hash_count + 1;
                press_detect = 0;
            }
            if ( !(hash_count < 32) ) {
                hash_ready = 1;
            }
            break;
        case hashbuff_READY:
            SET_BIT(PORTB,6);
            // wait for button press to initiate txfr and run
            break;
        case hashbuff_TXFR:
            intxfr = 1;
            transmitToFPGA(hash_buffer);
            break;
        case hashbuff_MD5RUN:
            inrunning = 1;
            SET_BIT(FPGA_DDR,MD5_RUN);
            break;
        case hashbuff_RST:
            CLR_BIT(FPGA_DDR,MD5_RUN);
            SET_BIT(FPGA_DDR,AVR_EN);
            SET_BIT(FPGA_DDR,MD5_RST);
            SET_BIT(FPGA_DDR,AVR_RST);
            CLR_BIT(FPGA_DDR,MD5_RUN);
            hash_ready = 0;
            hash_count = 0;
            press_detect = 0;
            for (int i=0; i<32; i++) {
                hash_buffer[i] = blankarray[i];
            }
            break;
        default:
            break;
    }
    //Transitions
    switch(hashbuff_state){
        case hashbuff_INIT:
            hashbuff_state = hashbuff_RUN;
            break;
        case hashbuff_RUN:
            if (hash_ready == 1 && button_rst == 0) {
                hashbuff_state = hashbuff_READY;
            } else if (button_rst == 1) {
                hashbuff_state = hashbuff_RST;
            } else {
                hashbuff_state = hashbuff_RUN;
            }
            break;
        case hashbuff_READY:
            if (button_rst == 1) {
                hashbuff_state = hashbuff_RST;
            } else if (button_rdy == 1) {
                hashbuff_state = hashbuff_TXFR;
            } else {
                hashbuff_state = hashbuff_READY;
            }
            CLR_BIT(PORTB,6);
            break;
        case hashbuff_TXFR:
            hashbuff_state = hashbuff_MD5RUN;
            break;
        case hashbuff_MD5RUN:
            if (button_rst) {
                hashbuff_state = hashbuff_RST;
                inrunning = 0;
            } else {
                hashbuff_state = hashbuff_MD5RUN;
            }
            break;
        case hashbuff_RST:
            hashbuff_state = hashbuff_INIT;
            break;
        default:
            hashbuff_state = hashbuff_INIT;
            break;
    }
}
void hashbuff_Task()
{
    hashbuff_init();
    while (1) {
        hashbuff_Tick();
        vTaskDelay(10);
    }
}


void StartSecPulse(unsigned portBASE_TYPE Priority)
{
    xTaskCreate(lcdout_Task, (signed portCHAR *)"lcdoutTask", configMINIMAL_STACK_SIZE, NULL, Priority, NULL );
    xTaskCreate(getkey_Task, (signed portCHAR *)"getkeyTask", configMINIMAL_STACK_SIZE, NULL, Priority, NULL );
    xTaskCreate(hashbuff_Task, (signed portCHAR *)"hashbuffTask", configMINIMAL_STACK_SIZE, NULL, Priority, NULL );
}


int main(void)
{
    DDRA = 0x3F; PORTA = 0xC0;      // Set PORTA to output(0-5) input (6-7).
    DDRB = 0xF0; PORTB = 0x0F;      // Set PORTB to input (0-3) and output (4-7)
    DDRC = 0xFF; PORTC = 0x00;      // Set PORTC to output
    DDRD = 0xF0; PORTD = 0x0F;      // Set PORTD to a ready state for a keypad
 
    

    //Start Tasks
    StartSecPulse(1);
    //RunScheduler
    vTaskStartScheduler();
    
    return 0;
}