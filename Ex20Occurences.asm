#Exercise 20: Given an integer x and an array of integers y, 
#print the number of times x appears in y.

.data
	n:.word 6 #length of the array y
	y: .word 1, 2, 4, 5, 7, 4 #the array
	x: .word 4 #number
	
.text
	lui t0, 0x10010
	lw t1, 0(t0)
	lw s0, x
	
	
	li a0, 0
	ciclo: lw t2, 4(t0)
		 bne s0, t2, salta
		 addi a0, a0, 1
		 
	salta: addi t0, t0, 4
		 addi t1, t1, -1
		 bne t1, zero, ciclo
		 
	
	    
	   li a7, 1
	   ecall
	   li a7, 10
	   ecall
