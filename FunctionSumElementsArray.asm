#Exercise 14: Write an iterative function 
#to sum up all the values of an array of integers.

.data
	l: .word 6
	array: .word 5, 7, 9, 1, -3, 2
	
.text

	lui t0, 0x10010
	lw t1, 0(t0)
	li a0, 0
	ori t0, t0, 4
	jal ra, funzione
	

	li a7, 1
	ecall
	li a7, 10
	ecall
	
funzione: lw t2, 0(t0)
	    add a0, a0, t2
	    addi t1, t1, -1
	    addi t0, t0, 4
	    bne t1, zero, funzione
		 jalr zero, ra, 0
		 
	fine: jalr zero, ra, 0
	   	    
