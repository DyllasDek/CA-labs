.data
fin: .asciiz "Eight numbers : \n"
fout: .asciiz "Min number : "
.text
main:
li $v0,4
la $a0, fin
syscall
li $t1, 1
li $v0,6
syscall
mov.s $f12, $f0
input:
beq $t1, 8, end
li $v0,6
syscall
compare:
c.lt.s $f0, $f12
movt.s $f12, $f0
addi $t1, $t1, 1
j input
end:
li $v0,4
la $a0, fout
syscall
li $v0,2
syscall
