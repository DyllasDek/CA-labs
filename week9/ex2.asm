.data
fin: .asciiz "Enter n : "
fout: .asciiz "Answer : "
.text 
main:
li $v0, 4
la $a0, fin
syscall
li $v0, 5
syscall
move $t0, $v0 # n
li $t1, 0 # sum
beq $t0, $zero, end 
li $t2, 1 # 2^i
li $t3, 2 # const 2
li $t4, 0 # counter
sum:
jal power
add $t1, $t1, $t2
addi $t4, $t4, 1
beq $t0, $t4, end
power:
mul $t2, $t2, $t3
jr $ra
end:
li $v0, 4
la $a0, fout
syscall
move $a0, $t1
li $v0,1
syscall
