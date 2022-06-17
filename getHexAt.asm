	.data				#GLOBAL VARS
msg:	.asciiz "Done!"
space:	.asciiz "\n"
	.text				#INSTRUCTIONS
main:	li $t1, 0x12345678		#$t1 = 0x12345678
	li $t0, 0xf0000000		#$t1 = 0xf0000000
		
					#INITIALIZATION
	add $s0, $0, 0			#int i = 0
	li $t6, 28			#shiftAmount = 28
	
	li $s2, 8			#end Condition 
for:	beq $s0, $s2, done		#Start FOR

	and $t2, $t1, $t0		#get 1st digit
	srlv $t3, $t2, $t6		#get its value
	
	move $a0,$t3			#$a0 = $t3
	li $v0, 34
	syscall				#print($a0)
	
	la $a0, space			#$a0 = space
	li $v0, 4
	syscall				#print($a0)
	
	sub $t6, $t6,4			#update the next digit's position to translate
	srl $t0, $t0, 4
		
	add $s0,$s0,1			#i++
	j for				#jump instruction for the 'for' cicle
	
done:	la $a0, msg			#$a0 = msg
	li $v0, 4
	syscall				#print($a0)
		
	li $v0, 10
	syscall				#exit()
	
	
