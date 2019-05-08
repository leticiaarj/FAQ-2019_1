.data
	n1: .asciiz "N1: "
	n2: .asciiz "N2: "
	Resultado: .asciiz "resul: "
.text
	#salvando n1
	li $v0, 4
	la $a0, n1
	syscall
	
	li $v0, 5 #Contém inteiro para ler
	syscall
	
	move $t0, $v0
	
	#salvando n2
	li $v0, 4 #Endereço da String para imprimir
	la $a0, n2
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	#Subtraindo
	sub $t2, $t1, $
	li  $v0, 4
	la $a0, Resultado # a0, passa argumentos. Salvando em resultado
	syscall
	
	#Printando
	li $v0, 1 # Inteiro para ser printado
	move $a0, $t2
	syscall
	
	li $v0, 10
	syscall
	