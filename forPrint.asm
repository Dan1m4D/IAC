	.data
prompt: .asciiz "Intruduza um numero: "

	.text
	#a = $t1;	i = $t0;
main:	la $a0, prompt
	li $v0, 4
	syscall			#print(prompt)
	
	li $v0, 5
	syscall			#$v0 = read_int()
	
 	move $t1, $v0		#$t1 = a
 	li $t0, 0 		#$t0 = 0
for:	bge  $t0, $t1, done	#end condition
	
	li $a0, '-'		#$a0 = '-'
	li $v0, 11
	syscall			#print($a0)
	
	addi $t0, $t0, 1	#i++
	j for			#return to the beggining of the for
	
done:	li $v0, 10
	syscall			#exit()
	