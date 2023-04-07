#Exercise 8: 
#Write a program to count and print how many nodes a linked list has.
#3 -> 5 -> 76 -> 8
.data
	lista: .word n01 #lista points to the first element of the LL
	n01:   .word 3, n02 #linked list, an element points to the next element 
	n02:   .word 5, n03
	n03:   .word 76, n04
	n04:   .word 8, 0 #0 means the end of the LL
	
.text
	lw t0, lista #loading the lista that has the first value
	li a0, 0 #we use this pseudo-instruction to start, in some sense, the counter
	beq t0, zero, fine #if the LL arrives to 0, we are done
	
ciclo: lw t0, 4(t0) #inizia il ciclo caricando il secondo nodo, nella lista stessa, 
#forse si fa cosi per forza, diverso rispetto alle arrays
	 addi a0, a0, 1 #incrementi di uno il contatore 
	 bne t0, zero, ciclo #se la LL ancora non è finita rifa il ciclo

fine: li a7, 1 #system call :)
	ecall
	li a7, 10
	ecall
	 