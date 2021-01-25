	.data
space:
	.string "\n"
	
	.text
main:
	# x: t0 = readInt()
   	addi a7, zero, 5
   	ecall
    	add t0, zero, a0
    	
    	# y: t1 = readInt()
   	addi a7, zero, 5
   	ecall
    	add t1, zero, a0
    	
    	#signed comparison
    	slt t2,t0,t1
    	add a0, zero, t2
    	addi a7, zero, 1
    	ecall
    	la a0, space
	li a7,4
	ecall
    	
    	#unsigned comparison
    	sltu t2,t0,t1
    	add a0, zero, t2
    	addi a7, zero, 1
    	ecall
    	la a0, space
	li a7,4
	ecall