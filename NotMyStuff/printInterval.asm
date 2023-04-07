#print all the numbers in the interval [x, y); in this case we have to print 6, 7, 8, 9, 10

.data 
x: .word 6
y: .word 11

.text 
lw a0, x #in a0 i have the first word 
lw t0, y #in t0 i have the last number of the interval (not to print)

ciclo: bge a0, t0, fine
li a7, 1
ecall
addi a0, a0, 1
beq zero, zero, ciclo

fine: li a7, 10
ecall
