#Remove negative items from the list [8, 5, -2, 5]
#We know that the first item is positive

.data
	lista: .word n01
	n01:   .word 8, n02
	n02:   .word 5, n03
	n03:   .word -2, n04
	n04:   .word 5, 0
	
.text
		lw a0, lista
		lw a1, 4(a0) #in order to have a1 in 5 (second element of the ll)
		
ciclo:	beq a1, zero, fine #check if it is the end of the ll
		#check if it is negstive or positive
		lw t0, 0(a1)
		bge t0, zero, salta #if it is positive, skip
		#change the pointer from -2 to 5, the last element (pointers in ll)
		lw a1, 4(a1)
		sw a1, 4(a0)
		beq zero, zero, ciclo
		
salta:	mv a0, a1
		lw a1, 4(a1)
		beq zero, zero, ciclo
		
fine:		li a7, 1
		ecall
		li a7, 10
		ecall
	
	 
		