.data
fin: .asciiz "Enter number : "
fout: .asciiz "Answer : "
.text 
main:
li $v0,4
la $a0, fin
syscall
li $v0,5
syscall
move $t0, $v0
li $t1,0
li $t2,0
beq $t0,$t2,end
sum:
addi $t2,$t2,1
add $t1,$t1,$t2
blt $t2,$t0,sum
end:
li $v0,4
la $a0, fout
syscall
move $a0,$t1
li $v0,1
syscall
