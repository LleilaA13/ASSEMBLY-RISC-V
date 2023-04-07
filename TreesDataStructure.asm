#New Data structure: TREES
#similar to linked lists

#BINARY TREE: number of children a node can have is at most 2, the left and right child
#the node wth no children are called LEAVES
#the first node on top is called ROOT
#How are they represented?

#EXERCISE: Make a recursive function that counts the number of nodes
.data 
   albero: .word n01
	n01: .word  8, n02, n03
	n02: .word  5, n04, n05
	n03: .word  3, n06, 0 #0 end of it
	n04: .word  7, 0, 0
	n05: .word -2, 0, 0
	n06: .word 10, 0, 0
	
.text
	lw a0, albero
	jal ra, conta
	
		
	li a7, 1
	ecall
	li a7, 10
	ecall
	
	conta: bne a0, zero, ric #let's cover the base case: no tree, empty binary tree
		 jalr zero, ra, 0
		 
	ric:   addi sp, sp, -12 #make room for three words in the STACK,for 3 (or more if you want) recursive calls
		 sw ra, 0(sp)
		 sw a0, 4(sp)
		 lw  a0, 4(a0) #load into a0 the address of the left child
		 jal ra, conta
		 sw a0, 8(sp) #save the content of a0 into the stack
		 lw a0, 4(sp) #load into a0 the "original" a0
		 lw a0, 8(a0) #load into a0 the root of right child
		 jal ra, conta
		 lw t0, 8(sp)
		 add a0, a0, t0
		 addi a0, a0, 1
		 lw ra, 0(sp)
		 addi sp, sp, 12
		 jalr zero, ra, 0
	

