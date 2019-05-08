.data
	Numero1: .asciiz "Numero 1: "
	Numero2: .asciiz "Numero 2: "
	Numero3: .asciiz "Numero 3: "
.text
	#Salvando o numero 1 - A
	li $v0, 4
	la $a0,  Numero1
	syscall
	
	li $v0, 5 #Contém inteiros para ler
	syscall
	
	move $s0, $v0
	
	#Salvando o numero 2 - B 
	li $v0, 4
	la $a0,  Numero2
	syscall
	
	li $v0, 5
	syscall
	
	move $s1, $v0
	
	#Salvando o numero 3 - D
	li $v0, 4
	la $a0,  Numero3
	syscall
	
	li $v0, 5
	syscall
	
	move $s3, $v0
	
	#Somando a+b
	add $t0, $s0, $s1
	#Subtraindo por d
	sub $s5, $t0, $s3 # s5 = F
	
	#Printando
	li $v0, 1 # Inteiro para ser printado
	move $a0, $s5 
	syscall
	
	li $v0, 10
	syscall
	
