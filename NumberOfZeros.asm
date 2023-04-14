#EXERCISE 2 FOR MIDDTERM:
#Pint the number of zeros in an array

.data
	n: .word 6
array:   .word 6, 0, 8, 2, 0, 9
.text
	lui t0, 0x10010
	lw s0, 0(t0)
	ori t3, t0, 4
	li a0, 0
	
ciclo: lw t1, 0(t3)
	 bne t1, zero, salta
	 addi a0, a0, 1
	 
salta: addi t3, t3, 4
	 addi s0, s0, -1
	 bne s0, zero, ciclo 
	 
	 li a7, 1
	 ecall
	 li a7, 10
	 ecall