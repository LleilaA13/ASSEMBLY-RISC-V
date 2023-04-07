#EXERCISE: Data structure:  arrays

.data
	.word 6
	.word 3, 5, 11, 12, 21, 27
.text
#we have to make n loops where n = len(array)
	lui s0, 0x10010 #we put address in s0
	lui t1, 0(s0) #we take what's in s0 paired to the address = len
	