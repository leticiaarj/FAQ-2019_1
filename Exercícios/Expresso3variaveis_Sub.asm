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
	
	#Salvando o numero 3 - C
	li $v0, 4
	la $a0,  Numero3
	syscall
	
	li $v0, 5
	syscall
	
	move $s2, $v0
	
	#Subtraindo a-b
	sub $t0, $s0, $s1
	#Subtraindo por c 
	sub $s4, $t0, $s2 # s4= E
	
	#Printando
	li $v0, 1 # Inteiro para ser printado
	move $a0, $s4
	syscall
	
	li $v0, 10
	syscall
	
