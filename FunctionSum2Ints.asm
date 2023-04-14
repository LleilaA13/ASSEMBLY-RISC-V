#Exercise 10: Write a function to add two integers.

.data
	x:.word 5
	y:.word 6
	
.text
	lw t1, x
	lw t2, y
	li a0, 0
	jal ra, addizione
	li a7, 1
	ecall
	li a7, 10
	ecall
	
addizione: add a0, t1, t2
	     jalr zero, ra, 0