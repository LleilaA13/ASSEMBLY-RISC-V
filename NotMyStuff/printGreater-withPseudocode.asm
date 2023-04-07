#given two numbers print the greatest of the two 
.data
.word 6, 11

.text
lui s0, 0x10010
lw a0, 0(s0) #loads 6 in a0
lw t0 4(s0) #loads 11 in t0

bgt a0, t0, stampa
lw a0, 4(s0)

stampa: ori a7, zero 1 
ecall
ori a7, zero 10 
ecall

#now with pseudocode ________________ #in the midterm we can use pseudocode 
.data 
x: .word 6
y: .word 11

.text
lw a0, x
lw, a1, y 

bgt a0, a1, stampa
mw a0, a1 #move a1 into a0 
stampa: li a7, 1
ecall
li a7, 10 
ecall
