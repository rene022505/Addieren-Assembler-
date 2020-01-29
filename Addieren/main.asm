;
; Addieren.asm
;
; Created: 11.12.2019 10:16:20
; Author : rene
;


; Replace with your application code

; Port Konfiguration
ldi R16, 0x00
out DDRA, r16
out DDRB, r16
ldi r16, 0xFF
out PORTA, r16
out PORTB, r16
out DDRD, r16

loop:
in r17, PINA
in r18, PINB 
mov r18, r17
add r17, r18
brbs SREG_C, isset
notset:
out PORTD, r17
jmp loop
isset:
ldi r19, 0x01
andi r19, 0x01
out PORTC, r19
out PORTD, r17
jmp loop
