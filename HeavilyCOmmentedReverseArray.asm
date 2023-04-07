#Exercise 7: Write a program to reverse the order of elements in an array of integers
.data
	l: .word 7
	array: .word 5, 6, 3, 8, 12, 24, 17
	
.text
	main:
		lui s0, 0x10010 #s0 = address of the length
		lw t0, 0(s0) #load the length
		ori t2, zero, 0 #Counter, not to print so any temporary reg is fine
		
		slli t1, t0, 2 #Save value of 28 into t1 (7*4), offset for the last element
		#here the shift is from the left, so it is 2, else, it would have been 30.
		#qui sopra ti muovi , ma lo devi salvare aggiungendo THE ADDRESS of the length s0
		
		add s1, s0, t1 #Save the address of the last element in the array
		#qui prendi il registro s1, a caso, ci aggiungi il reg dove hai fatto lo shift della LEN (not the address s0)
		#con l'ADDRESS della len s0 (check debugger), infatti non esce un numero ma l'ADDRESS, il valore 
		#te lo loadi NEL LOOP, come sempre.
		
		or t3, s1, zero #ti salvi l'ADDRESS s1 IN UN ALTRO REGISTRO, t3. !chiedi perché!
		
		
	#inizia il loop che scorre i valori, ma non reversa:
	loop:
		bne t2, t0, reverse #If counter is different than the length, go to reverse function, quindi il loop finisce quando finisce l'array
		#se l'array è finita, system call
		ori a7, zero, 10
		ecall
	#loop che fa il reverse:	
	reverse:
		addi t2, t2, 1 #Increment Counter by 1, cosi tiene conto di quanti valori stai ad analizza, non lo stampa perche non è in a0
		lw a0, 0(s1) #carica effettivamente l'elemento dell'ADDRESS in s1 che abbiamo caricato dopo lo shift
		#Just go to the next address, after the last element address
		sw a0, 4(t3) #salva in a0, reg che viene stampato, il valore nell'ADDRESS dopo l'ADDRESS on t3
		addi s1, s1, -4 #vai indietro al valore precedente all'ultimo
		addi t3, t3, 4 #qui vai al secondo
		ori a7, zero, 1
		ecall
		
		beq zero, zero, loop #fai il loop finche non scorri TUTTI i valori 
		 
	end:
		ori a7, zero, 10
		ecall 
#FORSE:
#s1, parte dall'ultimo e torna indietro
#t3, parte dall'ultimo, ma fa il contrario