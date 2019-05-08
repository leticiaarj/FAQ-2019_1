.data
	buffer: .space 20

.text
	li $v0,8 # Ler uma String
        la $a0, buffer # Carrega o espaço no endereço
        li $a1, 80 # Aloca o espaço em byte para a String
        #move $t0,$a0 # Salva a String em $t0
        syscall
       
        
        #la $a0, buffer #reload byte space to primary address
        #move $a0,$t0 # primary address = t0 address (load pointer)
        #li $v0,4 # print string
        #syscall
        
        
        loop:
        	sll $t3, $t0, 4
        	
        	li $v0, 4 # Inteiro para imprimir. Mover para $a0
		syscall
		
		or $t1, $t3, $t0
		move $a2, $t1
		#beqz $t3, exit 
        	li $v0, 4 # print string
        	syscall
        	
        	#j loop
        	
        #exit:
        	li $v0,10 #end program
         	syscall
        
        	