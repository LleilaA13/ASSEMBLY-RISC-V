#PRACTICE for Midterm
#print the sum of the positive numbers in x

.data
	n: .word 6
	x: .word 5, 8, 6, -2, -1, 8
	
	
.text
	la s0, x
	lw s1, n
	li a0, 0

ciclo: lw t0, 0(s0)
       blt t0, zero, salta
       add a0, a0, t0
       
salta: addi s0, s0, 4
	 addi s1, s1, -1
	 bne s1, zero, ciclo

li a7, 1
ecall
li a7, 10
ecall
	
