#LOOP: In memory, an array consists in a word after the other.
 #Let's make a loop that sums the elements of the array. 
 #To do that, we need to understaqnd when does the loop finish.
 #We have to use a register which job is to count the number of iterations,
 #and we need to know the address of each of the array.
 #1st -> we decide to use the register a0 to store the sum. 
 #2nd -> we have to initialise a0 to zero. We can do that in multiple ways.
 
.data
	.word 5
	.word 5, -2, 7, 9, 8
	#a0 = counter
.text
	lui t0, 0x10010
	lw t1, 0(t0) #we are loading len(array)
	addi t2, t0, 4 #with this instruction we read the address stored in t0 and we add 4 
	
ciclo:lw t0, 0(t2) #we read the address stored in t2
	add a0 , a0, t0 
	addi t2, t2, 4 #here we iterate on the 2nd element of the array, by reading the address stored in t2.
	addi t1, t1, -1 #we are decreasing the length of the loop
	
	bne t1, zero, ciclo 
	
	li a7, 1 #with this system call, we print the value stored into a7
	ecall
	li a7, 10 #with this system call we print the value sotred in a7
	ecall
	
