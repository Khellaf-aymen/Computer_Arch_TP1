.data
var: .space 22

.text
.globl main 
.ent main

main:


li $v0,8
la $a0,var
li $a1,22
syscall



li $a0,10
li $v0,11
syscall

la $a0 , var
li $v0,4
syscall















li $v0 ,10
syscall 
.end main
