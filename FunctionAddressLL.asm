## Write a function that, given a linked list as input, 
#returns the address of the last node as output.

.data
	lista: .word n01
	n01:   .word 4, n02
	n02:   .word 5, n03
	n03:   .word 10, 0
	
.text
	la a0, n01 #loading the ADDRESS of the first node
	jal ra, funzione #jumping from the "main body" to the function "funzione"
	 
	 li a7, 1
	 ecall
	 li a7, 10
	 ecall
#SOTTO IL SYSTEM CALL
funzione: lw a1, 4(a0) #loading the address of the second node from a0 into a1 (+8)
	    beq a1, zero, fine #if it's done, finish the program
	    
ciclo: mv a0, a1 #move the content found in a1, into a0, the reg that gets printed
	 lw a1, 4(a1) #going forward to the address of the third node 
	 bne a1, zero, ciclo #repeat until finish
	#infatti fa un iclo e un pezzetto qui perche l'unica cosa che fa è muovere il contenuto 
	#di a1 (indirizzo di terzo e ultimo nodo), nel reg che verrà stampato, a0. 
	 jalr zero, ra, 0
	 #torna su e stampa
fine: jalr zero, ra, 0