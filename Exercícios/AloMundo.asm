
.data
	Alo: asciiz "Hello World"
.text
	li $v0,4    # A intru��o usada copia um padr�o de bits da instru��o para o registrador de destino 
		    # (Lembre-se que o operando imediato de 16 bits � estendido em 32 bits). 
		    # Essa opera��o, geralmente, � chamada de opere��o imediata de carga. 
		    # Ele carrega um registrador com um valor que est� imediatamente dispon�vel, sem passar para a  mem�ria 
		    # N�mero 4: Carregar o n�mero 4 em v0. Que significa printar uma String.
		    
	la $a0, Alo #Carrega um endere�o. A diferen�a dele pro lw � que o lw carrega uma palavra na mem�ria
		    #Carregar argumento de valor em $a0, $a1, $a2 ou $f12
		    
	syscall     #Chama o sistema