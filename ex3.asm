	.data
space:
	.string "\n"
	
	.text
main:
	# read number
	addi a7, zero, 5
	ecall
	add t0, zero, a0 
	
	#print decimal
	addi a7, zero,1
	ecall
	la a0, space
	li a7,4
	ecall
	
	#print hex
	add a0, zero, t0
	addi a7, zero, 34
	ecall
	la a0, space
	li a7,4
	ecall
	
	#print unsigned
	add a0, zero, t0
	addi a7, zero, 36
	ecall
	la a0, space
	li a7,4
	ecall

	
	#print binary
	add a0, zero, t0
	addi a7, zero, 35
	ecall
