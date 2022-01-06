.data
	texto: .asciiz "Digite um n�mero: "
	
.text

main:
	# Lendo o texto
	jal read_variable # jal(Jump And Link) pula para outro registerador, porem linkando para nao perder a origem. Para chamar a função na main
	
	# Obtendo a entrada do usuário
	jal input_user #Chama a função input_user

	#Movendo a entrada inteira para outro registrador
	move $t0, $v0
	
	#Imprimindo o número
	jal print_the_number
	#Finalizando o programa
	jal fim
	
read_variable:
	li $v0, 4
	la, $a0, texto
	syscall 
	jr $ra # jr (jump register), $ra (registrador que atua como um Return) retorna pra o registrador que foi chamado. É o return. Ele volta pra onde foi chamada

input_user:
	li $v0, 5 # N�mero 5: Ler um inteiro  
	syscall
	jr $ra
	
print_the_number:
	
	li $v0, 1 # N�mero 1: Inteiro para imprimir. Mover para $a0
	move $a0, $t0
	syscall
	jr $ra
	
fim:
	li $v0, 10 #Exit
	syscall
