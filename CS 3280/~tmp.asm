**************************************
*
* Name: William Johnke
* ID: 14253530
* Date: February 18, 2017
* Lab2
*
* Program description:
*
* Pseudocode:
* int dividend, divisor, quotient, remainder;
* dividend=101;
* divisor=6;
* quotient=0;
* remainder=dividend;
* while(remainder!=1){
*	remainder-divisor
*             =>remainder
	quotient=quotient+1;
*}
*
*
*
*
**************************************

* start of data section

	ORG $B000
DIVIDEND	FCB     101         The dividend
DIVISOR	FCB       6         The divisor.

	ORG $B010
QUOTIENT	RMB       1         The quotient.
REMAINDER	RMB       1         The remainder.
* define any other variables that you might need here using RMB (not FCB or FDB)
	

	ORG $C000
* start of your program
	CLR	QUOTIENT
	CLR	REMAINDER

	LDAA	DIVIDEND
	LDAB	DIVISOR

	CMPB	$00
	BEQ	ELSE1
	
WHILE	CMPA	DIVISOR
	BGT	IF
	
	SUBA	DIVISOR
	INC	QUOTIENT
	CMPA	$01
	BLE	ELSE
	BRA	WHILE			

IF	STAA	REMAINDER
ELSE1	REMAINDER	$FF
	QUOTIENT	$FF
ELSE	STAA	REMAINDER






