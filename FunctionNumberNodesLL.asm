#Exercise 12: Write an iterative function to count 
#the length of a linked list (number of nodes).

.data
	lista: .word n01
	n01:   .word 3, n02
	n02:   .word 7, n03
	n03:   .word 6, n04
	n04:   .word 2, n05
	n05:   .word 6, 0
	
.text

	lw t1, lista
	li a0, 0
	jal ra, funzione
	
	li a7, 1
	ecall
	li a7, 10
	ecall
funzione: lw t2, 0(t1)
	    beq t2, zero, fine
	    
	  ciclo: lw t2, 0(t1)
	  	   addi a0, a0, 1
	  	   lw t1, 4(t1)
	  	   bne t1, zero, ciclo
	  	   jalr zero, ra, 0
	  	   
	 fine: jalr zero, ra, 0