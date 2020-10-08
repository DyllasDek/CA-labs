.data
eq: .asciiz "(y*z^2)/f-q\n"
in_y: .asciiz "Enter y: "
in_z: .asciiz "Enter z: "
in_f: .asciiz "Enter f: "
in_q: .asciiz "Enter q: "
ans: .asciiz "The answer is "
.text
la $a0, eq
li $v0, 4
syscall
#Value of y
la $a0, in_y
li $v0, 4
syscall
li $v0, 5
syscall
move $t1, $v0
#Value of z
la $a0, in_z
li $v0, 4
syscall
li $v0, 5
syscall
move $t2, $v0
#Value of f
li $v0, 4
la $a0, in_f
syscall
li $v0, 5
syscall
move $t3, $v0
#Value of q
la $a0, in_q
li $v0, 4
syscall
li $v0, 5
syscall
move $t4, $v0
#Operations with variables
#Multiply y by z and z
mul $t1, $t1, $t2
mul $t1, $t1, $t2
#Divide y*z^2 by f 
div $t1, $t3
#Store the result of division
mflo $t0
#Subtract q from the result
sub $t0, $t0, $t4
#Friendly interface
li $v0, 4
la $a0, ans
syscall
#Display answer
li $v0, 1
move $a0, $t0
syscall
#End of the programm
li $v0, 10
syscall