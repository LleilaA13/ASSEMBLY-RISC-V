	#EXERCISE 3:
#Write a program that computes the length of a string and prints it to the console

.data
	.asciz "ACSAI è fighissimo!"
	
.text 
	lui s0, 0x10010   #so you need a loop, or loops, and a counter in order to return the len
	ori a0, zero, 0 #you have 'A', index = 0
	
loop: lb t0, 0(s0)   #to load in the first byte
	beq t0, zero, fine #quando la stringa è finita,vai a fine
	
	addi a0, a0, 1 #contatore registra una lettera
	addi s0, s0, 1  #per aggiunger di uno e spostare di uno, from a byte to the next one
	beq zero, zero, loop  #maybe empty in order to maintain the loop, since we wrote the main loop
	
fine :ori a7, zero, 1
	ecall
	
	ori a7, zero, 10
	ecall

	  
	  

	
	
