;
; LED-pattern.asm
;
; Created: 08-01-2025 15:11:08
; Author : Devansh Ramdurgekar
; 


; Replace with your application code
start:
  ldi r16, 0xff
	out ddrd, r16
	ldi r17, 0xff
	hi : out portd,r17
 ; send value of r17 register to port d
	call delay
	ldi r20, 0xaa
	out portd, r20
	call delay
	ldi r21, 0x55
	out portd,r21
	call delay
	ldi r18,0x00
	out portd,r18
	call delay
	rjmp hi
; code to generate delay using loops
	delay: 
	ldi r19,240
	l3 : ldi r20,240
	l2 : dec r20
	brne l2
 ; branch if not equal
	dec r19
	brne l3
	ret
