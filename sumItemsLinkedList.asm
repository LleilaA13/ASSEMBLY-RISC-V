#prints the sum of the items of the linked list 

.data
lista: .word nodo1
nodo1: .word 8, nodo2
nodo2: .word -5, nodo3
nodo3: .word 6, nodo4
nodo5: .word 12, 0 
nodo4: .word 1, nodo5 

.text
lw s0, lista #pointer to the head of the list 
li a0, 0 #contatore per la somma
beq s0, zero, fine

ciclo: lw t0, 0(s0)
add a0, a0, t0

lw s0, 4(s0) #load address of the next node
bne s0, zero, ciclo

fine: li a7, 1
ecall
li a7, 10
ecall
