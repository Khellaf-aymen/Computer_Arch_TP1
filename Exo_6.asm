.data
x: .word 0
y: .word 0
superf: .word 0
messagelo: .asciiz "longeur : "
messagela: .asciiz "largeur : "
messagesu: .asciiz "superf : "
messageper: .asciiz "\n per :  : "




.text
.globl main 
.ent main

main:

la $a0, messagelo
li $v0, 4
syscall

li $v0,5
syscall
sw $v0 , x

la $a0, messagela
li $v0, 4
syscall

li $v0,5
syscall
sw $v0,y


lw $t0, x
lw $t1, y
mul $t2, $t0, $t1






la $a0, messagesu
li $v0, 4
syscall


li $v0, 1
move $a0, $t2
syscall


add $t2, $t0, $t1
add $t2, $t2, $t2

la $a0, messageper
li $v0, 4
syscall


li $v0, 1
move $a0, $t2
syscall







li $v0 ,10
syscall 
.end main