#count the number of numbers of v that are equal to x or equal to y.

.data	
	n: .word 8
	v: .word 5, 6, -3, 0, 5, 5, 7, 4
	x: .word 1
	y: .word 8
	
.text

	lui t0, 0x10010
	lw t1, 0(t0)
	lw s1, x
	lw s2, y
	li a0, 0
	addi t0, t0, 4
	
ciclo: lw t2, 0(t0)
	 bne t2, s1, salta
	 addi a0, a0, 1
	 
	 
salta: bne t2, s2, salta2
	 addi a0, a0, 1
	 
salta2: addi t0, t0, 4
	  addi t1, t1, -1
	  bne t1, zero, ciclo
	  
	li a7, 1
	ecall
	li a7, 10
	ecall