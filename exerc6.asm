lw $t1, 0($gp)
addi $t2, $gp, 4
loop:	
	lw $t3, 0($t2)
	beq $t3, $zero, fim
	addi $t2, $t2, 4
	slt $t4, $t1, $t3
	beq $t4, $zero, loop	
	lw $t1, 0($t2)
	jal loop

fim: 
sw $t1, 0($gp)
nop