#EXERCISE 1 FOR MIDTERM
#Print "Trovato" if the first word (52) is in the array, otherwise print "Non Trovato"

.data	
	x:  .word 52
	l:  .word 5
array:    .word 13, 2, 66, 2, 8
	    .asciz "Non Trovato"
	    .asciz "Trovato"
	    
.text
	lui t0, 0x10010
	lw s1, 0(t0) #load x (52)
	lw t1, 4(t0) #load length
	addi t3, t0, 8 #load address of first element of the array
	
ciclo: lw t2, 0(t3)
	 bne t2, s1, salta
	 beq t2, s1, Trovato
	 
salta: addi t3, t3, 4
	addi t1, t1, -1
	bne t1, zero, ciclo
	addi a0, t0, 0x1c
	li a7, 4
	ecall
	li a7, 10
	ecall
	
Trovato: addi a0, t0, 0x20
	  li a7, 4
	  ecall
	  li a7, 10
	  ecall
	