	.data
minus:	.asciiz "texto em maisuculas"	#static char minus[] = "texto em minusculas" ;
maius:	.space	20			#static char maius[20];

# i - $t0
# &minus[0] . $a0
# &maius[0] . $a1
# &minus[i] . $t1
# &maius[i] . $t2
# copia de minus[i] . $t3

	.text
main:					#void main(void)
	add $t0, $t0, $0		#int i=0;
	la $a0, minus			#$a0 = &minus[0]
	la $a1, maius			#$a1 = &maius[0]
	
while:	addu $t1,$a0, $t0		#$t1 = minus + i*1
	lb $t3, 0($t1)			#$t3 = copia de minus
	
	beq $t3, $t3, endwhile		#while( minus[i] != ‘\0’)
	addi $t3,$t3, 'A'		#maius[i] = minus[i] + ’A’
	subi $t3, $t3, 'a'		#maius[i] = minus[i] - ‘a’;
	
	sb $t3, 0($t2)			#maius[i] = $t3
	addi $t1, $t1, 1		#i++;
	j while				#jump condition
endwhile:
	la $a0, maius
	li $v0, 4
	syscall				#printstr( maius );
	
	li $v0, 10
	syscall				#exit()
