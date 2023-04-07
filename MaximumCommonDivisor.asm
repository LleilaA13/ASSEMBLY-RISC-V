#PRACTICE for Midterm

#Compute the maximum common divisor (MCD)

.data
	x: .word 54
	y: .word 36
	
.text
#assume that x >= y
		lw a0, x
		lw a1, y
ciclo:	beq a1, zero, fine
		mv t0, a0
		mv a0, a1
		sub a1, t0, a0
		beq zero, zero, ciclo #qui no len, quind per finire 0 = 0
		
	
	
	
fine: li a7, 1
	ecall
	li a7, 10
	ecall