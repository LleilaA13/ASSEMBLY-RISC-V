#Exercise 22: Given a linked list of integers lista, print the sum of the items in the list.

.data
	lista: .word n01 #lista points to the first element of the LL
	n01:   .word 3, n02 #linked list, an element points to the next element 
	n02:   .word 5, n03
	n03:   .word 76, n04
	n04:   .word 8, 0 
	
.text
	lw s0, lista
	li a0, 0
	beq s0, zero, fine
	
ciclo: lw t0, 0(s0) #carico il primo nodo, 3
	 add a0, a0, t0 # lo aggiugno a a0 per fare la somma
	 lw s0, 4(s0) #carico l'INDIRIZZO del secondo elemento, perché poi carico l'ELEMENTO a inizio loop
	  bne s0, zero, ciclo
	 
fine: li a7, 1
	ecall
	li a7, 10
	ecall