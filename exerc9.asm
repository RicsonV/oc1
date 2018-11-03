lw $t1, 0($gp)#contagem

addi $t2, $gp, 100 #indice A
addi $t3, $gp, 200 #indice B

lw $t4, 100($gp) #posicao 0 do vetor A
lw $t5, 200($gp) #posicao 0 do vetor B

loop:   beq $t4, $zero, fim
        lw $t4, 0($t2)
        lw $t5, 0($t3)
        sub $t6, $t4, $t5
        addi $t2, $t2, 4
        addi $t3, $t3, 4
        slt $t7, $zero, $t6
        beq $t7, $zero, loop
        add $t1, $t1, 1
        jal loop

fim:    nop