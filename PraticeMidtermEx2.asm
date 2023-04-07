#NEW DATA STRUCTURE: MATRICES
#How do you represent matrices (2D) in a memory that is one dimensional?
#row after the other: [4, -1, 0, 1]
#n: number of rows
#m: number of columns. Number of columns tells you how much you need to jump

#EXERCISE: Sum all the items of a:
#typical solution: high level language, with two loops, one inside the other
#other solution: you go through the whole list with the counter and increment it by one
.data 
	n: .word 2
	m: .word 2
	a: .word 4, -1, 0, 1
	
.text
#prepare the first loop:
	la s0, a
	lw s1, n
	li a0, 0
	
ciclo1: lw s2, m #loads number of columns
ciclo2: lw t0, 0(s0) #load item
	  add a0, a0, t0 #sum it up
	  addi s0, s0, 4 #load the next one
	  addi s2, s2, -1 #subtract the column done
	  bne s2, zero, ciclo2 #close inner loop 
	  
	  addi s1, s1, -1 #decrement length of rows
	  bne s1, zero, ciclo1
	  
	  li a7, 1
	  ecall
	  li a7, 10
	  ecall





	