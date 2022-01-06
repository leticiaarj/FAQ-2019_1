.data
	pula: .asciiz "\n"
.text
	main:
		jal ler
	
		ler:
			li $v0, 5 # Ler um inteiro  
			syscall
			move $t1, $v0
			blt $t1, 0, exit
			bgt $t1, 1000, exit
			j condicao
	
		incluso1:
		
			addi $t1, $zero, 7
			li $v0, 1 # Inteiro para imprimir. Mover para $a0
			move $a0, $t1
			syscall
			li $v0, 4
			la, $a0, pula
			syscall
			jal exit
			
		incluso2:
			li $t9, 10
			sub $t2, $t1, $t9
			addi $t3, $t2, 7
			li $v0, 1 # Inteiro para imprimir. Mover para $a0
			move $a0, $t3
			syscall
			li $v0, 4
			la, $a0, pula
			syscall
			jal exit
			
		incluso3:
			li $t9, 30
			sub $t2, $t1, $t9
			li $t3, 2
			mul $t4, $t2, $t3
			addi $t5, $t4, 7
			addi $t6, $t5, 20
			li $v0, 1 # Inteiro para imprimir. Mover para $a0
			move $a0, $t6
			syscall
			li $v0, 4
			la, $a0, pula
			syscall
			jal exit
			
		incluso4:
			li $t9, 100
			sub $t2, $t1, $t9
			li $t3, 5
			mul $t4, $t2, $t3
			addi $t5, $t4, 7
			addi $t6, $t5, 160
			li $v0, 1 # Inteiro para imprimir. Mover para $a0
			move $a0, $t6
			syscall
			li $v0, 4
			la, $a0, pula
			syscall
			jal exit

		condicao:	
		
			ble $t1, 10, incluso1 # Se t0 for menor ou igual a 10 chama a inclusão 1
			ble $t1, 30, incluso2
			ble $t1, 100, incluso3 
			bgtu $t1, 100, incluso4
			
		exit:
		
			li $v0, 10 #Exit
			syscall
