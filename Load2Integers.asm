#EXERCISE 1:
#Write the code to load from memory two integers,
#sum them up and store the result into the memory

.data
	.word 17
	.word 25
.text
	lui t0, 0x10010
	lw t1, 0(t0)
	lw t2, 4(t0)
	add t2, t2, t1
	sw s0, 8(t0)   #use the original one of lui
	#NEVER FORGET ECALL
	ori x17, zero, 10
	
	ecall