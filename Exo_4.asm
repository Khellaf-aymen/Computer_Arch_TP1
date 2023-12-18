.data
var: .space 22

.text
.globl main 
.ent main

main:

#read the String
li $v0,8
la $a0,var # Addr to storage 
li $a1,22  # Bytes of input 
syscall

#Print a new line 

li $a0,10
li $v0,11
syscall

#print the String
la $a0 , var
li $v0,4
syscall














#Terminat the App
li $v0 ,10
syscall 
.end main
