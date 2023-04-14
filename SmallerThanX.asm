#EXERCISE 4 FOR MIDTERM
#Print the number of item in "a" smaller than the number x

.data
	n: .word 6
	a: .word 5, 6, 1, 3, 2, 7
	x: .word 3
	
.text
	lui t0, 0x10010
	lw t1, 0(t0)
	addi t3, t0, 4
	lw s1, x
	li a0, 0
	
ciclo: lw t2, 0(t3)
	 bgt t2, s1, salta
	 addi a0, a0, 1
	
	 
salta: addi t3, t3, 4
	 addi t1, t1, -1
	 bne t1, zero, ciclo
	 
	 li a7, 1
	 ecall
	 li a7, 10
	 ecall
