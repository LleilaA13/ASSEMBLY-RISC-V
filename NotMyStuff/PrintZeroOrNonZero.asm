#EXERCISE 2: 
#Write a program that loads an integer and prints "zero", 
#if the integer is zero, or "non zero" otherwise.

.data 
	.word 55
	.asciz "Zero"
	.asciz "Non zero"		
	
.text
	lui s0, 0x10010 #address in the memory
	lw t0, 0(s0) #proprio quello in 0x10010
	ori a0, s0, 4 #metti dentro a0 l'indirizzo da printare
	
	beq t0, zero, jump
	
	ori a0, s0, 9  #vai a vedere i i word e conta
	
jump: ori a7, zero, 4
	ecall
	
	ori a7, zero, 10 #di stile
	ecall
	
	
	
