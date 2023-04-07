#print the sum of the items of even position in the array 
.data
x: .word 1 #just a number
n: .word 5 #len of array
y: .word 7, -2, 0, 1, 1 

.text
la s0, y #address first item
li a0, 0
lw s1, n #len array

ciclo: lw t1, 0(s0)
add a0, a0, t1
addi s0, s0, 8
addi s1, s1, -2

bgt s1, zero, ciclo
