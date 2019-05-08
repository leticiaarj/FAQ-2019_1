# constantes segmento de dados
.data
	const5: .float 5.0
	const9: .float 9.0
	const32: .float 32.0
.text
	#fahr:
	#	l.s $f16, const5
	#	l.s $f18, const9
	#	div.s $f16, $f16, $f18
	#	l.s $f18, const32
	#	sub.s $f18, $f12, $f18
	#	mul.s $f0, $f16, $f18
	#	jr $ra
	# constantes na mem´oria ( $gp + off )
	fahr :
		lwc1 $f16, const5( $gp )
		lwc1 $f18, const9( $gp )
		div.s $f16, $f16, $f18
		lwc1 $f18, const32( $gp )
		sub.s $f18, $f12, $f18
		mul.s $f0, $f16, $f18
		jr $ra