#EXERCISE 6: Write a program to find the maximum value in an array of integers.

.data
	.word 6
	.word 5, 3, 66, 2, 12, 24
	
.text

	lui t0, 0x10010  
	lw t1, 0(t0) #load len(array)
	lw a0, 4(t0) #store 1st element (5),as our current max value into a0.
	ori t0, t0, 0x08 #intanto cerchi the 2nd element, poi nel loop lo "load" 
	addi t1, t1, -1 #we need (n-1) loops, not n loops
	
loop: lw t2, 0(t0) #you load the second element into the loop
	
	bge a0, t2, jump
	mv a0, t2
	
jump: addi t0, t0, 4 #3rd element 
	addi t1, t1, -1 #toglie elemento accorciando lista
	
	bne t1, zero, loop
	
	li a7, 1
	ecall
	
	li a7, 10
	ecall	

	

	
	
