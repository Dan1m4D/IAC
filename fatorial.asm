	.data
prompt: .asciiz "Intruduza um numero: "
result: .asciiz "O fatorial do número inserido é: "

	.text
main:	# i = $t0;	n = $t1;	f = $t2
	la $a0, prompt
	li $v0, 4
	syscall			#print(prompt)
	
	li $v0, 5
	syscall			#$v0 = read_int()
	
	move $t1, $v0		#$t1 = n
	move $t0, $v0		#$t0 = i = n
	li $t2, 1		#$t2 = f = 1

for:	ble $t0, $0, done
	mul $t2, $t2, $t0
	
	sub $t0,$t0,1		#i--
	j for			#jump instruction for the 'for' cicle	
	
done:	la $a0, result
	li $v0, 4
	syscall

	move $a0, $t2
	li $v0, 1		#print(f)	
	syscall
	
	li $v0, 10
	syscall