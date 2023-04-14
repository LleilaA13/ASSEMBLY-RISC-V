
#NO DATA SEGMENT APPARENTLY
#Function that prints a new line to the console 


.text
	#print 1
	li a7, 1
	li a0, 1
	ecall
	
	#print new line to separate
	jal ra, newLine
	
	#print 0
	li a7, 1
	li a0, 0
	ecall
	
	#print new line again
	jal ra, newLine
	
	#exit gracefully
	addi a7, zero, 10
	ecall
	
newLine:
	#li: load immediate (pseudo-instruction)
	#10: ascii code for '\n'
	li a0, 10
	
	#11: system call to print a CHARACTER
	li a7, 11
	ecall
	
	#jump back to where we left bc we are polite
	jalr zero, ra, 0
	
