#Assume that we want to find the max of all the integers inside an array
.data
	.word 6
	.word 3, 5, 6, 9, 12, 55
	
.text
	lui t0, 0x10010  #address of len
	lw s0, 0(t0)
	addi s1, t0, 4
	lw s2, 0(s1)
	addi s1, s1, 4
	lw t1, 0(s1)
	beq s0, zero, end
	addi s0, s0, -1
	blt s2, t1, tempmax
	addi s1, s1, 4
	lw t1, 0(s1)
	beq zero, zero, end
	tempmax: or s2, 0, t1
	addi 
	
	end: ori a7, zero, 1
	ecall
	
	ori a7, zero, 10
	ecall
	
	