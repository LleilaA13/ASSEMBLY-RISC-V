#Exercise 7: Write a program to reverse the order of elements in an array of integers

.data
	l: .word 7
	array: .word 5, 6, 3, 8, 12, 24, 17
	
.text
	main:
		lui s0, 0x10010
		lw t0, 0(s0) #Length
		#la s2, array
		#ori s1, s0, 4 #Copy address of first element in the array
		ori t2, zero, 0 #Counter
		slli t1, t0, 2 #Save value of 28 into t1 (7*4), offset for the last element
		add s1, s0, t1 #Save the address of the last element in the array
		
		or t3, s1, zero #Copy of the address of the last element
	
	loop:
		bne t2, t0, reverse #If counter is different than the length, go to reverse function
		ori a7, zero, 10
		ecall
		
	reverse:
		addi t2, t2, 1 #Increment Counter
		lw a0, 0(s1)
		#Just go to the next address, after the last element address
		sw a0, 4(t3)
		addi s1, s1, -4
		addi t3, t3, 4
		ori a7, zero, 1
		ecall
		
		beq zero, zero, loop
		 
	end:
		ori a7, zero, 10
		ecall 
