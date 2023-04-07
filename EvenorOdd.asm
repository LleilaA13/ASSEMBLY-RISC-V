#EVEN OR ODD ( last year exercise)
.data
	.word 66 #0x10010
	.asciz "pari"
	.asciz "dispari"
	
#just check the last bit, 0 = even and 1 = odd
.text
	lui t0, 0x10010
	lw t1, 0(t0) #we load in t1 the value of the address contained in t0
	andi t1, t1, 1 #this does the AND between the value contained in t1 with 1
	
	beq t1, zero, pari
	
	addi a0, t0, 9 #maybe 4 + (4+1) = 9, perché "dispari" is after the 4 of pari plus 1 final zero ????
	ecall
	
	beq, zero ,zero, uscita 
	
pari: ori a0, t0, 4 #4 = "pari"
	addi a7, zero, 4
	ecall
	
uscita: addi a7, zero, 10
	ecall
	
