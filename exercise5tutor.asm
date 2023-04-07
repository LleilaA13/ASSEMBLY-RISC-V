#program that prints the first n fibonacci numbers
#0 1 1 2 3 5 8 13 21 34 55 89 144
.data
    n:  .word 47
.text
.globl main

main:

            li x2, 0                # Used to determine if n (x7) equals 0
            li x3, 1                # Used to determine if n (x7) equals 1
            li x5, 0                # First number
            li x6, 1                # Second number
            lw x7, n                # Limit
            li x8, 1                # Counter
            beq x7, x2, DO          # If n == 0 then jump to DO (Which shoud print 0). Implements f(0) = 0
            beq x7, x3, WRITE       # if n == 1 then jump to WRITE (Which should print 1). Implements f(1) = 1  

    LOOP:   beq x8, x7, EXIT        # Comparse the counter x8 which starts with 1 to n (limit). If x8 == x7 jump to EXIT
            add x4, x5, x6          # Add x5 to x6 and store in x4          
            ori x5, x6, 0           # Assign the second number to my first number
            ori x6, x4, 0           # Assign the sum of x5 and x6 to my second number
            addi x8, x8, 1          # Add 1 to my counter
            j LOOP                  # Jump to loop

    EXIT:   
            li x17, 1               # Load constant 1 to x17
            add x10,x4,x0           # Add x4 (which contains the result after the above coe) to x10
            ecall                   # Issue an SystemCall which prints an integer (Because of the 1 in x17)
            li x17, 5                                   
            ecall
            li x17, 10      
            ecall                   # Reads an int from input console (Because of the 10 in x17)
    DO:   
            li x4, 0                # load 0 in x10 (x10 will be used by the SysCall to print) and print            
            add x10,x4,x0       
            li x17, 1
            ecall   
            li x17, 5
            ecall
            li x17, 10
            ecall    

    WRITE:  li x4, 1                # load 1 in x10 and print
            add x10,x4,x0
            li x17,1
            ecall
            li x17, 5
            ecall
            li x17, 10
            ecall

