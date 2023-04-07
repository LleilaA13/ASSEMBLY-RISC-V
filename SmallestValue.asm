#EXERCISE: Find the smallest value of the array and print it
.data
	.word 8
	.word 3, 4, -2, -9, 10, 11, 0, 5
	
#In order to print the smallest number of the array we have to use a loop and store in a
#register the value that the loop has encountered so far; By doing this, when the loop will finish,
#the smallest number of the array will be stored in that register.
#Let's use the register a0 to store this value, but: How can we initialize a0?
#the smartest thing to do is to initialize it using the 1st element of the array.

.text
	lui t0, 0x10010
	lw t1, 0(t0) #loading the length of the array 
	lw a0, 4(t0) #we load in a0 the 1st element of the array, the number 3
	ori t0, t0, 0x08 #after this instruction t0 will contain the address of the 2nd element of the array
	#ATTENTION: In this case we used ORI to make the sum, but it is not always the case!
	addi t1, t1, -1 #with this we decrease the effective length. We do this bc the next instruction 
		#will start the loop and onsidering that the len is 8, and we need 7 loops in order to terminate the program
		#we MUST then decrease this number by 1 before EVEN STARTING THE LOOP.
	loop: lw t2, 0(t0) #Here the loop starts and stores in t2 the 2nd element of the array, so number 4.

		bge t2, a0, jump #Here we check if 4 is bigger than 3. If it is, we jump, otherwise we execute the next instruction.
		mv a0, t2 #here we move the content of t2 into a0; but this instruction depends on the prev one, 
				# so it will be executed only in some precise cases.
	jump: addi t0, t0, 4 #here we load into t0 the address of the 3rd element, so -2
	
		addi t1, t1, -1 #we decrease again the value of the remaining loops
		
		bne t1, zero, loop #we check when the loop must end
		
		li a7, 1 #NOTE! this printing system call ALWAYS considers the content inside reg a0
		ecall
		li a7, 10
		ecall