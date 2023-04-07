#LINKED LISTS [7, 11, -2, 8] #RECURSION
#return the number of elements of the linked list, the length.
.data 0x10010000
	n01:.word 7, n02 #0x10010010
	n04:.word 8, 0
	n02:.word 11, n03 #0x10010018
	n03:.word -2, n04 #0x1001008  #not in rars, you use labels
lista:    .word n01 #0x1001000 #address of the first node

#comment the assumption that the list is not empty
#1-base case -> empty list
#2-recursive case
.text
lunghezza:  bne a0, zero, ric
		jalr zero, ra, 0
		
	ric:  addi, sp, sp, -4 
		sw ra, 0(sp)
 		lw a0, 4(s0) #return address(?)
 		
 		jal ra, lunghezza #add 1 for n cause we get n-1
 		addi a0, a0, 1
 		
 		lw ra, 0(sp)
 		addi sp, sp, 4 #pop the stack
 		jalr zero, ra, 0
 				