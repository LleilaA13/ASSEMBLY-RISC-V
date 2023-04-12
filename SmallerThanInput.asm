#given an array of integers, and an integer, print the n. of integers 
#strictly smaller than the integer given in input
.data
	n: .word 10
	y: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
	x: .word 5
.text
	lui t0, 0x10010
	lw t1, 0(t0)
	ori t0, t0, 0x04
	lw a1, x
	li a0, 0

ciclo: lw t2, 0(t0)
	 bgt t2, a1, salta
	 addi a0, a0, 1
	 
salta: addi t0, t0, 4
	addi t1, t1, -1
	bne t1, zero, ciclo
	
	addi a0, a0, -1
	 li a7, 1
	 ecall
	 li a7, 10
	 ecall