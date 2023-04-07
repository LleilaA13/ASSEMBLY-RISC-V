#Exercise 5: Write a program to calculate the factorial of a number.
#RECURSIVE:
#base case: n=1
#recursive case: n > 1
.data
	.word 4
.text	
	lui sp, 0x10010
	lw a0, 0(sp)
f: bne a0, zero, ric #if the input (4) is different from zero, jump to ric
	li a0, 1 #store 1 in a0
	jalr zero, ra, 0 #kind to return to main, restituisci
	
ric: addi sp, sp -8 #book the word in the STACK
	sw ra, 0(sp) #store in the stack gthe return address
	sw a0, 4(sp) #store in the stack the initial input
	addi a0, a0, -1 #in order to do (n-1)
	jal ra, f #recall the function f
	lw t0, 4(sp) #load in t0 the initial input
	
	mul a0, a0, t0 #product between t0 and a0
	lw ra, 0(sp) #store the return address of MAIN in ra
	addi sp, sp, 8 #clean the stack
	jalr zero, ra, 0 #return to the main
	
	addi a7, zero, 1
		ecall
		
	addi a7, zero, 10
		ecall