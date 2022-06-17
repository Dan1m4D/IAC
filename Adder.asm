	.data
msgI:	.asciiz "Introduzza dois numeros:\n"
msgF:	.asciiz "A soma dos numeros é:"
a:	.asciiz "a:"
b:	.asciiz "b:"
		
	.text
main:	la $a0, msgI		#$a0 = msgI
	li $v0, 4
	syscall			#System.out.println($a0);
	
	li $v0, 4		
	la $a0, a		#$a0 = a	
	syscall			#System.out.println($a0);
	li $v0, 5			
	syscall			#$v0 = sc.nextInt();
	
	move $t0, $v0		#$t0 = $v0
		
	li $v0, 4
	la $a0, b		#$a0 = b		
	syscall			#System.out.println($a0);
	li $v0, 5
	syscall			#$v0 = sc.nextInt();
	
	move $t1, $v0		#$t1 = $v0
	
	li $v0, 4		
	la $a0, msgF		#$a0 = msgF
	syscall			#System.out.println($a0);
	
	add $a0, $t0, $t1	#$a0 = $t0 + $t1
	li $v0, 1
	syscall			#System.out.println($a0);
	
	li $v0, 10
	syscall			#exit()
	
	
	