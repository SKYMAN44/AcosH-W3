	.text
main: 
	
	# x
    	li a7, 5
    	ecall
    	add t0, zero, a0

    	# y
    	li a7, 5
    	ecall
    	add t1, zero, a0

    	# z: t2 = t0 + t1
    	add t2, t0, t1
	slt t3, t2, t0
	slt t4, t2, t1

	#print result  1-overflow,0-no overflow
	and a0, t3, t4
	li a7, 1
	ecall