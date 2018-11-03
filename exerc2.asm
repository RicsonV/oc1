lw $t1, 0($gp)
lw $t2, 4($gp)
lw $t3, 8($gp)
slt $t4, $t1, $t2
beq $t4, $zero, t1maiort2
lw $t6, 0($gp)
lw $t5, 4($gp)
sw $t5, 0($gp)
sw $t6, 4($gp)

t1maiort2:
lw $t1, 0($gp)
lw $t2, 4($gp)
lw $t3, 8($gp)
slt $t4, $t2, $t3
beq $t4, $zero, t2maiort3

lw $t6, 4($gp)
lw $t5, 8($gp)
sw $t5, 4($gp)
sw $t6, 8($gp)

lw $t1, 0($gp)
lw $t2, 4($gp)
lw $t3, 8($gp)
slt $t4, $t1, $t2
beq $t4, $zero, fim

lw $t6, 0($gp)
lw $t5, 4($gp)
sw $t5, 0($gp)
sw $t6, 4($gp)

t2maiort3: jal fim

fim: 
lw $t1, 0($gp)
lw $t2, 4($gp)
lw $t3, 8($gp)
nop