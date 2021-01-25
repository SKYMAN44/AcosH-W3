	.data
space:
	.string "\n"
	
	.text
main:
	# x: t0 = readInt()
   	addi a7, zero, 5
   	ecall
    	add t0, zero, a0
    	
    	#turning on 3rd bit
    	addi t1,t1,1
    	slli t1,t1,2
    	or t2,t1,t0
    	
    	#turning off 6th bit
    	slli t1,t1,3
	not t1,t1
    	and t2,t2,t1

    	#print
    	add a0, zero, t2
    	addi a7, zero, 35
    	ecall
    	
    