
#You have a (general, not binary) tree in the data segment. Find the subtree with maximal sum (the subtree such that the sum of all the items in it is maximal in the tree). 
#The solution must be a recursive function. In the end, print the maximal sum.
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
#base case:
	lw a0, albero
	jal ra, FindSubTree
	add a0, zero, a3	
		li a7, 1
		ecall
		li a7, 10
		ecall
		
	FindSubTree: bne a0, zero, ric
		jalr zero, ra, 0
		
		ric:  lw a2, 0(a0)
		addi sp, sp, -16 #reserve space in the stack
		sw ra, 0(sp)     
		sw a2, 4(sp)
		sw a0, 8(sp)
		lw a0, 4(a0)
		jal ra, FindSubTree
		lw a0, 8(sp)
		lw a0, 8(a0)
		
		jal ra, FindSubTree
		lw t0, 4(sp)
		add a3, a3, t0
		
		lw ra, 0(sp)
		addi sp, sp, 16
		jalr zero, ra, 0





	