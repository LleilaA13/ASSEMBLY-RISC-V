#Exercise 21: Given an array of integers y, 
#print all the items of even position in the array.
#index starts from 0
.data
	l: .word 5
	y: .word 4, 6, 7, 2, 9

.text 
	lui t0, 0x10010
	lw t1, 0(t0)
	li a0, 0
	ori t0, t0, 4
	
ciclo: lw t2, 0(t0)
	 mv a0, t2
	 li a7, 1
	 ecall
	 addi t0, t0, 8
	 addi t1, t1, -1
	 bne t1, zero, ciclo
	 
	li a7, 10
	ecall 