#Exercise 3 for midterm 
#Sum elements of a linked list

.data
	lista: .word n01
	n01:   .word 6, n02
	n02:   .word -2, n03
	n03:   .word 0, n04
	n04:   .word 5, 0
	
.text
	li a0, 0 #start the counter, that we will print, so it is in reg a0
	lw t0, lista #load the address of the head #also lw t0, n01
	
	#t0 va avanti di 8
ciclo: lw t1, 0(t0) #carico 6, il valore del nodo
	 add a0, a0, t1 #lo aggiungo al counter
	 lw t0, 4(t0)# qui punti al n02, ANDANDO AVANTI DI 8, anche se l'offset è 4, qui fai lw di t0, con t0 
	 bne t0, zero, ciclo 
	 
	 li a7, 1
	 ecall
	 li a7, 10
	 ecall