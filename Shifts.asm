	.data
	.eqv lmm, 1		#shift Amount
	
	.text
main:	li $t0, 0x12345678
	
	sll $t1, $t0, lmm	
	srl $t2, $t0, lmm
	sra $t3, $t0, lmm
	
	li $v0, 10
	syscall 		# exit()	 
  