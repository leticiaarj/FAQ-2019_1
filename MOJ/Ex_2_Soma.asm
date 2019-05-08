.data
	pula: .asciiz "\n"


.text
	main:
		jal ler
	
		ler: 
			li $v0, 5 # Ler um inteiro - Input  
			syscall
			move $t0, $v0
			slti $t1, $t0, 0
			bne $t1, $zero, else
			jal soma
		
		soma:
			add $t2, $t0, $t2
			jal print
		else:
			jal sair
			
		print:
			li $v0, 1 # Inteiro para imprimir. Mover para $a0
			move $a0, $t2
			syscall
			li $v0, 4 # String a ser lida
			la $a0, pula # String a ser printada
			syscall
			jal ler
		sair:
			li $v0, 10 #Exit
			syscall	
			
			
			
			