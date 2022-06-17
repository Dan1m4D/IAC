	.text
main:	li $t0, 0x12345678
	li $t1, 0x0000000F
	
	and $t2, $t0, $t1		#$t2 = $t0 && $t1
	li $v0,1			#load print
	la $a0,($t2)
	syscall				#print($t2)
	
	or $t3, $t0,$t1			#$t3 = $t0 || $t1
	la $a0,($t3)
	syscall				#print($t3)
	
	nor $t4, $t0, $t1		#$t3
	la $a0,($t4)
	syscall
	
	xor $t5, $t0, $t1
	la $a0,($t5)
	syscall
	
	nor $t4, $t0, $0		#!$t0
	la $a0,($t4)
	syscall
	
	li $v0, 10		#exit()
	syscall  