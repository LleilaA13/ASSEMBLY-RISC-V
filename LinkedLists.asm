#LINKED LISTS [7, 11, -2, 8]
#return the number of elements of the linked list, the length.
.data 0x10010000
	n01: .word 7, n02 #0x10010010
	n04: .word 8, 0
	n02: .word 11, n03 #0x10010018
	n03:.word -2, n04 #0x1001008  #not in rars, you use labels
lista: .word n01 #0x1001000 #address of the first node

#comment the assumption that the list is not empty
.text
	#lui s0, 0x10010
			lw s0, lista 		#load lista with a pseudo-instruction
			li a0, 0			#another pseudo-instruction #a0 contains the address of n01 (7)
			beq s0, zero, fine	#empty list case
	ciclo:	lw s0, 4(s0)		#you load the address of the next one, n02
			addi, a0, a0, 1 		#you increment a0; a0+=1
			bne s0, zero, ciclo
			
	fine:		li a7, 1
			ecall
			
			li a7, 10
			ecall