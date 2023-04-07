.data
n: .word 8

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial
    
    addi a1, a0, 0
    addi a7, x0, 1
    ecall # Print Result
    
    addi a0, x0, 10
    ecall # Exit

factorial:
    sub a2, a0, a1
    mul ra, a0, a2
    
    jalr zero, ra, 0
    
  addi a7, zero, 1
  ecall
  addi a7, zero, 10
  ecall