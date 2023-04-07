.text
	addi a0, zero, 5
	jal ra, f
	
	addi a7, zero, 1
	ecall
	
	addi a7, zero, 10
	ecall
	
	
f:    bne a0, zero, ric #conditional, this is done if input is 0
	li a0, 1
	jalr zero, ra, 0
	
ric:  addi sp, sp, -8
	sw ra, 0(sp) #save ra in stack
	sw a0, 4(sp) #save ´n´ in stack
	
	addi a0, a0, -1 #to get ¨n-1¨
	jal ra, f #0x0040101c a0 will contain n-1! (so we call f)
	
	lw t0, 4(sp) #we take n from the stack
	mul a0,a0, t0
	lw ra, 0(sp)  #we take ra (since it was overwritten) to PC
	addi sp, sp, 8 #we give back the slots to the stack
	jalr zero, ra, 0 #go back to caller
