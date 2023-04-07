#SUM ARRAY
.data
	.word 5
	.word 7, 8, 0, -2, 1
	
.text
	lui t0, 0x10010
	lw a1, 0(t0)
	lw a0, 4(t0)
	jal ra, sum
	
	addi a7, zero, 1
	ecall
	
	addi a7, zero, 10
	ecall
	
sum:  bne a1, zero, ric
	li a0, 0
	jalr zero, ra, 0
	
ric: addi sp, sp, -8
     sw ra, 0(sp)
     sw a1, 4(sp)
     addi a0, a0, 4
     addi, a1, a1, -1
     jal ra, sum
     lw t0, 4(sp)
     lw t0, 0(sp)
     add a0, a0, t0
     lw ra, 0(sp)
     addi sp, sp ,8
     jalr zero, ra, 0
	