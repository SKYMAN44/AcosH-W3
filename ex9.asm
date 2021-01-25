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
    	
    	# swap operation
    	xor t0,t0,t1
    	xor t1,t0,t1
    	xor t0,t0,t1
    	
    	#print result   
    	add a0, zero, t0
    	addi a7, zero, 1
    	ecall
    	la a0, space
	li a7,4
	ecall
    	add a0, zero, t1
    	addi a7, zero, 1
    	ecall