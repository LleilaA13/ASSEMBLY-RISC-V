#I want to count the nodes of a linked list
.data
n01: .word 7, n02
n04: .word 8, 0
n02: .word 11, n03
n03: .word -2, n04
lista: .word n01

.text 
lunghezza: #argument is the address of the list 
bne a0, zero, ric
jalr zero, ra, 0

ric: addi sp, sp, -4
sw ra, 0(sp)
lw a0, 4(a0) #a0 has the head of rest of the list
jal ra, lunghezza 
addi a0, a0, 1 #add 1 to counter 
lw ra, 0(sp)
addi sp, sp 4
jalr zero, ra, 0

