.text
	li $s0, 11111111111111111111111111111111
	li $s1, 00000000000000000000000000000001
	
	slt $t0, $s0, $s1 #comparação com sinal
	sltu $t1, $s0, $s1 #comparação sem sinal