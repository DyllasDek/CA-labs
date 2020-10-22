Exercise 1
.data
fin: .asciiz "Fahrenheit temperature : "
fout: .asciiz " Celsius value : "
k1: .float 32.0
k2: .float 5.0
k3: .float 9.0
.text 
main:
li $v0,4
la $a0, fin
syscall
li $v0,6
syscall
l.s $f1,k1
l.s $f2,k2
l.s $f3,k3
sub.s $f4,$f0,$f1
mul.s $f5,$f4,$f2
div.s $f12,$f5,$f3
end:
li $v0,4
la $a0, fout
syscall
li $v0,2
syscall
