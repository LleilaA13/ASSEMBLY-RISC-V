#EXERCISE: Compute the trace of a

.data 
	n: .word 2
	m: .word 2
	a: .word 4, -1, 0, 1
	
.text
	la s0, a
	lw s1, n
	li a0, 0
	lw t2, m
	slli t2, t2, 2 #multiplicare m per 4, cosi hai l'offset per muoverti
	addi t2, t2, 4 #offset to go to the next item
	
ciclo:lw, t0, 0(s0)
	add a0, a0, t0
	add s0, s0, t2
	addi s1, s1, -1
	bne s1, zero, ciclo
	
	li a7, 1
	ecall
	li a7, 10
	ecall