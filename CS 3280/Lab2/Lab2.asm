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
* 
* if(divisor==0){
*	quotient=0;
*	remainder=0;
*	return;
* }
* while(true){
*	if(dividend<divisor){ 
*		remainder=dividend;
*		break;
*	dividend-divisor
*             =>dividend
*	quotient=quotient+1;
*	if(dividend<=1){
*		remainder=dividend;
*		break;
*	}
*}
*
*
*
**************************************

* start of data section

	ORG $B000
DIVIDEND	FCB	0         The dividend
DIVISOR	FCB	25	The divisor.

	ORG $B010
QUOTIENT	RMB       1         The quotient.
REMAINDER	RMB       1         The remainder.
* define any other variables that you might need here using RMB (not FCB or FDB)
	

	ORG $C000
	CLR	QUOTIENT
	CLR	REMAINDER
	LDAA	DIVIDEND
	LDAB	DIVISOR

	CMPB	#0
	BEQ	ELSE
	
DO	CMPA	DIVISOR
	BLT	IF
	
	SBA	
	INC	QUOTIENT
	CMPA	#1
	BLE	IF

UNTIL	BRA	DO

IF	STAA	REMAINDER
	BRA	ENDIF

ELSE	LDAB	#$FF
	STAB	REMAINDER
	STAB	QUOTIENT
	BRA	ENDIF


ENDIF	BRA	DONE			

DONE	BRA	DONE
	END
