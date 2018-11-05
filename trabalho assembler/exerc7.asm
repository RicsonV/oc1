lw $t1, 0($gp)#resultado
lw $t2, 4($gp)#numero a ser consultado no vetor

addi $t3, $gp, 8

loop:        lw $t4, 0($t3)
        beq $t4, $zero, fim
        addi $t3, $t3, 4
        beq $t4, $t2, adiciona1
        jal loop

adiciona1:        addi $t1, $t1, 1
                jal loop

fim:    sw $t1, 0($gp)
        sw $t2, 4($gp)
        nop