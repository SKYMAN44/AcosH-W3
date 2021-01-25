	.data
space:
	.string "\n"
	
	.text
main:
	# x: t0 = readInt()
   	addi a7, zero, 5
   	ecall
    	add t0, zero, a0
    	
    	#shift left
    	slli t2,t0,3
    	
    	# printInt(t2)    
    	add a0, zero, t2
    	addi a7, zero, 1
    	ecall
    	la a0, space
	li a7,4
	ecall
    	
    	#shift right logical
    	srli t2,t0,3
    	
    	# printInt(t2)    
    	add a0, zero, t2
    	addi a7, zero, 1
    	ecall
    	la a0, space
	li a7,4
	ecall
    	
    	#shift right a
    	srai t2,t0,3
    	
    	# printInt(t2)    
    	add a0, zero, t2
    	addi a7, zero, 1
    	ecall
    	la a0, space
	li a7,4
	ecall
    	
    	