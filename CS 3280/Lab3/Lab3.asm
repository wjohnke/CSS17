**************************************
*
* Name: Will Johnke
* ID: 14253530
* Date: 3/1/2017
* Lab3
*
* Program description:
* This program will find the greatest common
* divisor of 2 different numbers, using Euclid's algorithm
* Pseudocode:
*
*int num1=248, num2=186;
*int gcd, remainder, oldRemainder;
*
*
*
*do{
*     num1=>remainder;
*     oldRemainder=remainder; //Store value of remainder before changing
*     do{             //Find remainder of num1%num2
*	if(remainder<num2) break;
*	remainder-num2   
*	=>remainder;
*	if(remainder==0){
*		gcd=oldRemainder;
*		return;
*	} 
*     }
*     num2=>num1
*     remainder=>num2;
*}     
*	
*
*
*
**************************************

* start of data section

	ORG $B000
NUM1	FCB	211
NUM2	FCB	7

	ORG $B010
GCD	RMB	1

* define any other variables that you might need here using RMB (not FCB or FDB)
REMAINDER	RMB	1
OLDREMAINDER	RMB	1
	ORG $C000
* start of your program
	CLR	GCD
	CLR	REMAINDER

	LDAA	NUM1
	LDAB	NUM2
	STAB	OLDREMAINDER

WHILE1	

WHILE2
IF	CBA		Check if A<B, then A is the remainder, continue looping
	BLO	ELSE

THEN	SBA
	CMPA	#0	Catch if remainder=0, branch to appropriate section
	BEQ	ENDWHL1
	BRA	WHILE1

ELSE	STAA	REMAINDER	Handles cases where remainder still>oldremainder, loop back through,
	STAB	OLDREMAINDER	swap accumulators
	LDAA	OLDREMAINDER
	LDAB	REMAINDER
	BRA	WHILE1

ENDWHL1	STAB	GCD	GCD has been found
	BRA	ENDWHL2	Not really necessary, but just for code structure
ENDWHL2

DONE	BRA	DONE
	END

