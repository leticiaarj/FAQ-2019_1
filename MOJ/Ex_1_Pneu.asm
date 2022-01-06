.data
	desejada: .asciiz "Pressão desejada: "
	aferida: .asciiz "Pressão aferida: "
	pula: .asciiz "\n"
.text	
	main:

		jal ler
		jal subtrai
		jal print
		jal sair
		
		ler:
			li $v0, 5 # Ler um inteiro - Input  
			syscall
			move $t1, $v0
	
			#li $v0, 4 # String a ser lida
			#la $a0, aferida # String a ser printada
			#syscall
			li $v0, 5 # Ler um inteiro - Input  
			syscall
			move $t2, $v0
			
			jr $ra #Voltando pra main
	
		subtrai:
			#Subtraindo
			sub $t0, $t1, $t2
			jr $ra #Voltando pra main
	
		print:
			#Printando
			li $v0, 1 #Inteiro para imprimir. 
			move $a0, $t0 # Mover para $a0
			syscall
			li $v0, 4 # String a ser lida
			la $a0, pula # String a ser printada
			syscall
			jr $ra #Voltando pra main
			
		sair:
			#Fim
			li $v0, 10 #Exit
			syscall