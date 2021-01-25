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

    	# z: x + 5 - y 
    	sub t2, t0, t1
    	addi t2,t2,5
    	
    	# printInt(t2)    
    	add a0, zero, t2
    	addi a7, zero, 1
    	ecall
    	la a0, space
	li a7,4
	ecall
    	
    	# (x - y) << 3
    	sub t2,t0,t1
    	slli t2,t2,3

    	# printInt(t2)    
    	add a0, zero, t2
    	addi a7, zero, 1
    	ecall
    	la a0, space
	li a7,4
	ecall
    	
    	#(x + y) >> 2
    	add t2,t0,t1
    	srli t2,t2,2
    	
    	# printInt(t2)    
    	add a0, zero, t2
    	addi a7, zero, 1
    	ecall
    	la a0, space
	li a7,4
	ecall
    	
    	#(x + 5) + (x - 7)
    	addi t3,t3,7
    	addi t2,t0,5
    	sub t3,t0,t3
    	add t2,t2,t3
    	
    	# printInt(t2)    
    	add a0, zero, t2
    	addi a7, zero, 1
    	ecall
    	la a0, space
	li a7,4
	ecall
    	
    	#x >> 3 + y << 3
    	srli t0,t0,3
    	slli t1,t1,3
    	add t2,t1,t0
    	
    	# printInt(t2)    
    	add a0, zero, t2
    	addi a7, zero, 1
    	ecall
    	la a0, space
	li a7,4
	ecall