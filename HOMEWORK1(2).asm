#HOMEWORK 1 : Write a RISC-V program that, given three integers in the data segment, prints the median.
#Do not use pseudo-instructions.

.data
	
	.word 3, 13, 6
	#s0: min
	#s1: max
	#a0: median
.text
	   lui t0, 0x10010
	   addi t1, zero, 3 
	   lw s0, 0(t0)

loopmin: lw t2, 0(t0) #i-th element
	   bge t2, s0, jumpmin
	   addi s0, t2, 0	

jumpmin:addi t0, t0, 4
	  addi t1, t1, -1
	  bne t1, zero, loopmin
	  addi s0, s0, 0
	
	
	
	  lui t0, 0x10010
	  addi t1, zero, 3
	  lw s1, 0(t0)
	
loopmax: lw t2, 0(t0)
	   blt t2, s1, jumpmax
	   addi s1, t2, 0
jumpmax: addi t0, t0, 4
	   addi t1, t1, -1
	   bne t1, zero, loopmax
	   addi s1, s1, 0
	 
	 
	   lui t0, 0x10010
	   addi t1, zero, 3
	
loopmedian: lw a0, 0(t0)
	      addi s1, s1, 0
	      addi s0, s0, 0
	      bge a0, s0, next
	      addi t0, t0, 4
	      addi t1, t1, -1
	      bne t1, zero, loopmedian

next: ble  a0, s1, print
	addi t0, t0, 4
	addi t1, t1,-1
	bne t1, zero, loopmedian

print:addi a7, zero, 1
	ecall
	addi a7, zero, 10
	ecall
	
	

	

	
	
	
	
