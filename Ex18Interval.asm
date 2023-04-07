#Exercise 18: Given two integers x and y in the data segment, 
#print all the integers in the interval [x, y).

.data
	x: .word 7 #incluso
	y: .word 14 #escluso
	
.text
	lw a0, x
	lw t0, y
	
	
ciclo: bge a0, t0, fine
	 li a7, 1
	 ecall
	 addi a0, a0,1
	 
	 beq zero, zero, ciclo
	 
fine: li a7, 10
	ecall
