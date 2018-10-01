***************************************
*
* Name: William Johnke
* ID:   14253530
* Date: 4/24/2017
* Lab 5
*
* Program description:
* This program uses a transparent subroutine with a dynamic local variable
* to iterate through two arrays and find the greatest common divisor of each number in
* equal positions amongst the arrays, and stores the result back in a result variable.
*
*
*
* Pseudocode of Main Program:
*
* WHILE(*TABLE1 != $FF){
* 	*RESULT=CALCULATEGCD(*TABLE1, *TABLE2);
*	TABLE1++;
*	TABLE2++;
*	RESULT++;
* }
*
*---------------------------------------
*
* Pseudocode of Subroutine:
*  
*  CALCULATEGCD(NUM1, NUM2){
*
*  	DIVIDEND = NUM1;
*  	DIVISOR = NUM2;
*  	DO{
*
*       		QUOTIENT = 0;
*       		REMAINDER = DIVIDEND;        		
*       		WHILE (REMAINDER >= DIVISOR){           		
*              		QUOTIENT = QUOTIENT + 1;              			
*              		REMAINDER = REMAINDER - DIVISOR;                     
*       		}
*
*       		GCD = DIVISOR;
*       		DIVIDEND = DIVISOR;
*       		DIVISOR = REMAINDER;
*  	} UNTIL (REMAINDER == 0);
*  RETURN GCD
*	
***************************************
* start of data section

	ORG $B000
TABLE1	FCB	222,  37, 16,  55,  55,  1,   3, 22, $FF
TABLE2	FCB	37,  222, 240,  5, 55, 15,  22,  3, $FF

	ORG $B020
RESULT	RMB	8

* define any other variables that you might need here using RMB (not FCB or FDB)
* remember that your subroutine must not access any of these variables, including
* N and PRIME

YREG	RMB	2	Y Register Contents (Could just use stack)

	ORG $C000
	LDS	#$01FF		initialize stack pointer
* start of your program

	LDX	#TABLE1
	LDY	#RESULT	Storing result table pointer on stack
	PSHY
	LDY	#TABLE2


WHILE	LDAA	0,X
	CMPA	#$FF
IF	BEQ	ENDIF	Check if end of table
THEN	LDAB	0,Y	Value to be passed to subroutine

	JSR	SUB

	STY	YREG	Store Y Register contents to keep track of table2	
	PULA		Pull data off stack
	PULY		Pull Result table address off stack
	STAA	0,Y
	INX		Increment table1 pointer
	INY		Increment result table pointer
	PSHY		Put result table pointer back on stack
	LDY	YREG
	INY		Increment table2 pointer
	BRA	WHILE
ENDIF	PULY

DONE	BRA	DONE
	END


* define any other variables that you might need here using RMB (not FCB or FDB)
* remember that your main program must not access any of these variables, including
	ORG $B050
*LOCAL VARIABLES

GCD	RMB	1
QUOTIENT	RMB	1         	The quotient.
REMAINDER	RMB	1         	The remainder.
DIVIDEND	RMB	1         	The dividend
DIVISOR	RMB	1	The divisor.
XREG	RMB	2	The old x register contents

	ORG $D000
* start of your subroutine 

SUB	STX	XREG	X Now has return address
	TSX

	DES		Open hole for return value
	PSHA		Pushing all registers on stack for transparency
	PSHB
	PSHX
	PSHY
	TPA
	PSHA
	DES		Open hole for temp variable		

	STAA	DIVIDEND    	DIVIDEND = NUM1;
	STAB	DIVISOR     	DIVISOR = NUM2;

DO   	CLR	QUOTIENT    	DO{     QUOTIENT = 0
	LDAA	DIVIDEND	
	STAA	REMAINDER	     REMAINDER = DIVIDEND
WHILE1	LDAA	REMAINDER
	CMPA	DIVISOR	     WHILE (REMAINDER >= DIVISOR) {
     	BLO	ENDWHL	  	
        	SUBA	DIVISOR                     REMAINDER = REMAINDER - DIVISOR
	STAA	REMAINDER
        	INC	QUOTIENT      	QUOTIENT = QUOTIENT + 1	
	BRA	WHILE1	     }
ENDWHL
	LDAA	DIVISOR	GCD = DIVISOR;   
	STAA	GCD
	STAA	DIVIDEND	DIVIDEND = DIVISOR; 
	LDAA	REMAINDER
	STAA	DIVISOR	DIVISOR = REMAINDER
UNTIL	TST	REMAINDER	}   UNTIL (REMAINDER ==0)
	BNE	DO	

	
	LDAA	GCD	Get Variable address
	STAA	0,X
	INC	0,X	
	LDY	8,X	Get return address
	STY	7,X	Store into X stack pointers address 1 byte up
	LDAA	0,X	Storing gcd address	
	STAA	9,X	Storing in bottom of stack
	INS		Destroy local variables

	PULA		Restore all registers
	TAP
	PULA
	PULY
	PULX

	RTS