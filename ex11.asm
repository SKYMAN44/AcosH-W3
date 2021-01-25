	.data
space:
	.string "\n"
	
	.text
main:
	# x: t0 = readInt()
   	addi a7, zero, 5
   	ecall
    	add t0, zero, a0
    	
    	#print input
    	add a0, zero, t0
    	addi a7, zero, 35
    	ecall
    	la a0, space
	li a7,4
	ecall
    	
    	# x & (x-1)
    	addi t1,t1,1
    	sub  t1,t0,t1
    	and  t1,t1,t0
    	
    	#print turning off the rightmost 1-bit
    	add a0, zero, t1
    	addi a7, zero, 35
    	ecall
    	la a0, space
	li a7,4
	ecall
	
	# x | (x + 1)
	addi t1,t0,1
	or t1,t0,t1
	
	#print turning on rmst 0-bit
	add a0, zero, t1
    	addi a7, zero, 35
    	ecall
    	la a0, space
	li a7,4
	ecall
	
	#turning on trailing 0's
	addi t1,t2,1
    	sub  t1,t0,t1
    	or  t1,t1,t0
    	add a0, zero, t1
    	addi a7, zero, 35
    	ecall
    	
	
