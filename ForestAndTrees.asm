#TREES:
#to represent trees in memory we represent children as a linkedlist  of nodes. 
#sometimes it is useful to think of trees as a data structure called froest , 
#a tree is a list which every node is a forest. 
#A tree is a node for which the set of children is a forest
#A node is made by three items:
#value
#pointer to forest of children
#pointer to forest of brothers and sisters


#EXERCISE: Make a recursive function that counts the number of nodes in this tree 
 .data
	 albero: .word n01
	 n01:    .word 6, n02, 0
	 n02:    .word -2, 0 , n03
	 n03:    .word 1, n05, n04
	 n04:    .word 1, 0, 0
	 n05:    .word 5, 0, n06
	 n06:    .word 8, 0, n07
	 n07:    .word 11, 0, n08
	 n08:    .word -1, 0, 0
 
.text

	lw a0, albero
	jal ra, conta
	
	
			
		li a7, 1
		ecall
		li a7, 10
		ecall
	conta: #base case: empty forest (or forest) 
		bne a0, zero, ric
		jalr zero, ra, 0 #we jump back to the caller
		
	ric:  addi sp, sp, -12 #reserve space in the stack
		sw ra, 0(sp)     
		sw a0, 4(sp)
		
		lw a0, 4(a0)    #load pointer to children forest
		jal ra, conta
		sw a0, 8(sp)
		lw a0, 4(sp)
		lw a0, 8(a0)
		
		jal ra, conta
		lw t0, 8(sp)
		add a0, a0, t0
		add a0, a0, sp
		lw ra, 0(sp)
		addi sp, sp, 12
		jalr zero, ra, 0







