.data
	Numero1: .asciiz "Numero 1: "
	Numero2: .asciiz "Numero 2: "
	Resultado: .asciiz "Resultado: "
.text
	#Salvando o numero 1
	li $v0, 4
	la $a0,  Numero1
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	#Salvando o numero 2
	li $v0, 4
	la $a0,  Numero2
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	#Somando
	add $t2, $t0, $t1
	li $v0, 4
	la $a0, Resultado
	syscall
	
	#Printando
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 10
	syscall
