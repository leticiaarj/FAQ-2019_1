.data
	pula: .asciiz "\n"
	str1: .space 80
	str2: .space 80
.text
	.globl  main
	main:
		#jal NumeroQuestoes
		
		#NumeroQuestoes:

		la $s3,str2
    		move $t2,$s3
    		jal Input
		
		la $s2,str1
    		move $t2,$s2
    		jal Input
    				
    		loop:
			sll $t3, $s3, 4
			sll $t2, $s2, 4
			
			li $v0, 4 # Inteiro para imprimir. Mover para $a0
			move $a0, $t3
			syscall
			
			li $v0, 4
			la, $a0, pula
			syscall
			
			li $v0, 4 # Inteiro para imprimir. Mover para $a0
			move $a0, $t2
			syscall

			
			#lb $t2,($s2) # Pega o próximo char da String 1
    			#lb $t3,($s3) # Pega o próximo char da String 2
    			bne $t2,$t3, diferentes # Testa se são diferentes
			beq $t2,$zero, iguais # Testa se são iguais
			addi $s2,$s2,1 # Aponta para o próximo char
    			addi $s3,$s3,1 # Aponta para o próximo char
    			j loop
    			
		diferentes:
			addi $s4, $s4, 1
			
		iguais:
			addi $s5, $s5, 1
			j print
			
		print:
			li $v0, 1 # Inteiro para imprimir. Mover para $a0
			move $a0, $s5
			syscall
			
			j exit
		Input:
			# Lendo a string
    			move $a0,$t2
    			li $a1,79
    			li $v0,8
    			syscall
    			jr $ra                         # return
		
		exit:
		
			li $v0, 10 #Exit
			syscall
