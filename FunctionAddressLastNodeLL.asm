# Write a function that, given a linked list as input, returns the address of the last node as output.

.data
lista: .word nodo1
nodo1: .word 4, nodo2
nodo2: .word 5, coda
coda:  .word 10, 0

.text
	la a0, nodo1 #loading in a0 the address of the content of the first node
	jal ra, funzione #instruction used to call a function inside the main function
				#while saving the return address ra
				
	li a7, 1
	ecall
	li a7, 10
	ecall 
	#you do it BEFORE the funzione
funzione: lw a1, 4(a0) #adding in a1 the address stored in a0 (lo copi), aggiungend 4, quindi lo muovi al prox valore

	    beq a1, zero, fine #se la ll è finita, system call
	
ciclo:   mv a0, a1 #overwriting the address stored in a0 w/ the address stored in a1
	   lw a1, 4(a1)
	   bne a1, zero, ciclo
	   jalr zero, ra, 0
	   
fine:	   jalr zero, ra, 0
	   
	   
	
	

	         

	
