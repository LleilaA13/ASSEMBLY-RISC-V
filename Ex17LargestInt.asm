#Exercise 17: Given two integers in the data segment, print the largest.

.data
	.word 5
	.word 7
	
.text 

	lui t0, 0x10010
	lw a0, 0(t0)
	lw t2, 4(t0)
	
	bge a0, t2, okay
	mv a0, t2
	
okay: addi a0, a0, 0

	li a7, 1
	ecall
	li a7, 10
	ecall

