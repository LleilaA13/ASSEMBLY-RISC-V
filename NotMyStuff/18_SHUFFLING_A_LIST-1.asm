#Write a function that, given an array of integers, shuffles the array in such a way that the first element 
#is the smallest

		.data

					.word 3
					.word 5, 4, 1
	
		.text
	
					lui t0, 0x10010 #loading in t0 the starting address of the program
					addi t0, t0, 4 #overwriting t0 with the address of the 1st element of the array 
					lw t1, 0(t0) #loading in t1 the value of the 1st element of the array
					lw t2, 4(t0) #loading in t2 the value of the 2nd element of the array
					ble t1, t2, salva_valore_minore #making a comparison between the values stored in the two registers
	
salva_valore_minore:
					mv t1, t1

ciclo:				
					
	

		