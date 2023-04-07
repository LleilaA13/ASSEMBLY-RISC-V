#FUNCTION that returns the input parameter incremented by 1.

.text 
	addi a0, zero, 5
	jal ra, piuuno
	
	addi a7, zero, 1
	ecall
	addi a7, zero, 10
	ecall
	
piuuno: addi a0, a0, 1
	jalr zero,ra, 0
