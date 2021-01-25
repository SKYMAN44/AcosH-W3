	.data
hello:
	.string "Hello world1"
	
	.text
main:
	li a7, 4
	la a0, hello
	ecall
