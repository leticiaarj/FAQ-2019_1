
.data
	Alo: asciiz "Hello World"
.text
	li $v0,4    # A intrução usada copia um padrão de bits da instrução para o registrador de destino 
		    # (Lembre-se que o operando imediato de 16 bits é estendido em 32 bits). 
		    # Essa operação, geralmente, é chamada de opereção imediata de carga. 
		    # Ele carrega um registrador com um valor que estã imediatamente disponível, sem passar para a  memória 
		    # Número 4: Carregar o número 4 em v0. Que significa printar uma String.
		    
	la $a0, Alo #Carrega um endereço. A diferença dele pro lw é que o lw carrega uma palavra na memória
		    #Carregar argumento de valor em $a0, $a1, $a2 ou $f12
		    
	syscall     #Chama o sistema