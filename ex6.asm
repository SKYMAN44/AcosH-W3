	.data
space:
	.string "\n"

multiplication:
	.string "\n multiplication: \n"
	
division:
	.string "\n division: \n"
	
modulo: 
	.string "\n modulo: \n"

	.text
main:
	# x: t0 = readInt()
   	addi a7, zero, 5
   	ecall
    	add t0, zero, a0
    	
#multiplication 
	
	la a0, multiplication
	li a7, 4
	ecall
	# x * 2 = x << 1
	slli a0, t0, 1
	li a7, 1
	ecall
	la a0, space
	li a7, 4
	ecall
	
	# x * 3 = x << 1 + x << 0
	slli t1, t0, 1
	slli t2, t0, 0
	add a0, t1, t2
	li a7, 1
	ecall
	la a0, space
	li a7, 4
	ecall
	
	# x * 4 = x << 2
	slli a0, t0, 2
	li a7, 1
	ecall
	la a0, space
	li a7, 4
	ecall
	
	# x * 5 = x << 2 + x << 0
	slli t1, t0, 2
	slli t2, t0, 0
	add a0, t1, t2
	li a7, 1
	ecall
	la a0, space
	li a7, 4
	ecall
	
	#x * 8 = x << 3;
	slli a0, t0, 3
	li a7, 1
	ecall
	la a0, space
	li a7, 4
	ecall
	
	#x * 31 = x << 4 + x << 3 + x << 2 + x << 1 + x << 0
	slli t1, t0, 4
	slli t2, t0, 3
	slli t3, t0, 2
	slli t4, t0, 1
	add t5, t1, t2
	add t6, t3, t4
	add t1, t5, t6
	add a0, t1, t0
	li a7, 1
	ecall
	la a0, space
	li a7, 4
	ecall
	
#division
	
	la a0, division
	li a7, 4
	ecall
	
	# x / 2 = x >> 1
	srli a0, t0, 1
	li a7, 1
	ecall
	la a0, space
	li a7,4
	ecall
	
	# x / 3  will use normal division
	li t1, 3
	div a0, t0, t1
	li a7, 1
	ecall
	la a0, space
	li a7, 4
	ecall
	
	# x / 5
	li t1, 5
	div a0, t0, t1
	li a7, 1
	ecall
	la a0, space
	li a7, 4
	ecall
	
	# x / 8 = x >> 3
	srli a0, t0, 3
	li a7, 1
	ecall
	la a0, space
	li a7, 4
	ecall
	
	# x / 31
	li t1, 31
	div a0, t0, t1
	li a7, 1
	ecall
	la a0, space
	li a7, 4
	ecall
	
# %
	la a0, modulo
	li a7, 4
	ecall
	
	# x % 2 for powers of 2 we can use : x & (2^n - 1)
	li t1, 1
	and a0, t0, t1
	li a7, 1
	ecall
	la a0, space
	li a7,4
	ecall
	
	# x % 3
	li t1, 3
	rem a0, t0, t1
	li a7, 1
	ecall
	la a0, space
	li a7, 4
	ecall
	
	# x % 5
	li t1, 5
	rem a0, t0, t1
	li a7, 1
	ecall
	la a0, space
	li a7, 4
	ecall
	
	# x % 8
	li t1, 7
	and a0, t0, t1
	li a7, 1
	ecall
	la a0, space
	li a7, 4
	ecall
	
	# x % 31
	li t1, 31
	rem a0, t0, t1
	li a7, 1
	ecall
	la a0, space
	li a7, 4
	ecall
	
	
	
	
