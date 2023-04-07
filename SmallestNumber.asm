#Given two integers stored in the memory (in the data segment), print the smallest.
.data
	.word -6
	.word 67
	
.text
	lui s0, 0x10010
	lw t1, 0(s0)
	lw t2, 4(s0)
	
	mv a0, t1
	ble a0, t2, uscita
	
	mv a0, t2
	addi a7, zero, 1
	ecall
	
uscita: ori a7, zero, 1
	ecall
	
	ori a7, zero, 10
	ecall