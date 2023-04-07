#Exercise 19: Given an integer x and an array of integers y, 
#print 1 if x is present in y, 0 otherwise.
.data
	n: .word 5
	y: .word 4, 5, 3, 1, 1
	x: .word 1
	
.text
	lui t0, 0x10010
	lw t1, 0(t0)
	lw s0, x
	
	
	li t3, 0
	ciclo: lw t2, 4(t0)
		 bne s0, t2, salta
		 addi t3, t3, 1
		 
	salta: addi t0, t0, 4
		 addi t1, t1, -1
		 bne t1, zero, ciclo
		 
	bne t3, zero, print1
	li a0, 0
	li a7, 1
	ecall
	li a7, 10
	ecall
	
print1: li a0, 1
        li a7, 1
        ecall
        li a7, 10
        ecall
	
