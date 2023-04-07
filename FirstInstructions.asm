#in the memory i put data, specifically two numbers.I want to write a code to load the first into
#reg 3, the second in reg4. To dthis load word must be used. I need the address of the numbers
#i want to register. For traditional resons we put our data starting from the address 010010000 so the second addresswill be 0x10010004
lui x5, 0x10010
lw x3, 0(x5)
lw x4, 4(x5)
sw x8, 0(x15)
#complete prev excercise by storing in the next address the sum of the prev numbers
add x6, x4, x3
sw x6, 8(x5)

ori x17, x0, 10