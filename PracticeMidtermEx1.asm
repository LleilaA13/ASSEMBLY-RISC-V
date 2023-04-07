

.data	
	n: .word 8
	v: .word 5, 8, -3, 0, 1, 1, 7, 2
	x: .word 1
	y: .word 8
	
#count the number of numbers of v that are equal to x or equal to y.

.text
	la s0, v
	lw s1, n #load the length
	li a0, 0 #first item, counter
	lw s2, x
	lw s3, y
	
	 
ciclo: lw t0, 0(s0) #load the first element of v to compare with x and then y
	 bne t0, s2, salta
	 addi a0, a0, 1
	 beq zero, zero, salta2
	 
salta: bne t0, s3, salta2 #compare it to y
	 addi, a0, a0, 1
	 
salta2:addi s0, s0, 4
	 addi s1, s1, -1
	 
	 bne s1, zero, ciclo
	 
	 li a7, 1
	 ecall
	 
	 li a7, 10
	 ecall
	 