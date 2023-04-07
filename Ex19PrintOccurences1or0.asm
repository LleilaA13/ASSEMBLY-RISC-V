#Exercise 19: Given an integer x and an array of integers y, 
#print 1 if x is present in y, 0 otherwise.

.data 
	n: .word 4
	y: .word 4, 6, 9, 3
	x: .word 3
	
.text
	lw s0, n
	li t0, 0(s0)
	
	