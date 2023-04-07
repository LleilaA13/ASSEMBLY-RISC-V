#Given two integers stored in the memory (in the data segment), print the biggest.
.data
	.word 45
	.word 5
	
.text
	lui t0, 0x10010
	lw t1, 0(t0)
	lw t2, 4(t0)
	mv a0, t1
	
	bge a0, t2, uscita
	
	mv a0, t2
	ori a7, zero, 1
	ecall
	
uscita: ori a7, zero, 1
	ecall 
	
	ori a7, zero, 10
	ecall