		.data	
minhafrase: 	.asciiz "Hello World!"

		.text
main:		
		addi 	$v0,$0, 4		#$v0 = "0+4
		la 	$a0, minhafrase
		syscall				#printstr ("Hello World!")
		addi $v0, $0, 10
		syscall				#exit()
		