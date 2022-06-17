	.data				#GLOBAL VARS
msg:	.asciiz "Done!"
space:	.asciiz	"\n"
	.text				#INSTRUCTIONS
main:	li $t1, 0xffffffff		#$t1 = 0x12345678
	li $t0, 0x80000000		#$t1 = 0xf0000000
		
					#INITIALIZATION
	add $s0, $0, 0			#int i = 0
	
	li $s2, 32			#end Condition 
for:	beq $s0, $s2, done		#Start FOR

	and $t2, $t0, $t1
	
	sll $t1, $t1, 1
	move $t3, $t2
	srlv $t3, $t3, $s0
	
	la $a0, ($t3)
	li $v0, 35
	syscall
	
	la $a0, space
	li $v0, 4
	syscall
	
	add $s0,$s0,1			#i++
	j for				#jump instruction for the 'for' cicle
	
done:	la $a0, msg			#$a0 = msg
	li $v0, 4
	syscall				#print($a0)
		
	li $v0, 10
	syscall				#exit()
	
	
