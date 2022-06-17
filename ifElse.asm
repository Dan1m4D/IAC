	.data
prompt: .asciiz "Intruduza um numero: "
strpar: .asciiz "O numero é par"
strimp: .asciiz "O numero é impar"

	.text
main:	la $a0, prompt
	li $v0, 4
	syscall			#print(prompt)
	
	li $v0, 5
	syscall			#$v0 = read_int()
	
	andi $t0, $v0, 1	#$t0 = $v0 & 1
	
if:	bne $t0, $0, else
	la $a0, strpar
	li $v0, 4
	syscall
	j endif			#jump out of the cycle
	
else:	la $a0,strimp
	li $v0, 4
	syscall
	
endif: li $v0, 10
	syscall			#exit()
	
	