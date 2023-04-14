#Exercise 7: Write a program to reverse the order of elements in an array of integers. 

.data
	l: .word 7
  array: .word 5, 6, 3, 8, 12, 24, 17
  
 .text
 	lui t0, 0x10010
 	lw t1, 0(t0)
 	li a1, 0 #temporary counter, tiene conto della lunghezza dell'array
 	slli t2, t1, 2 
 	add s1, t2, t0
 	#add t3, s1, zero
 	
 loop: bne a1, t1, reverse
 	 li a7, 10
 	 ecall
 	 
 reverse: addi a1, a1, 1
 	    lw a0, 0(s1)
 	    sw a0, 0(s1)
 	    addi s1, s1, -4
 	    #addi t3, t3, 4
 	    li a7, 1
 	    ecall
 	    
 	    beq zero, zero, loop
 	    
 end:	    li a7, 10 
 ecall
