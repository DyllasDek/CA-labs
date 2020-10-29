.data
k1: .float 5.4
k2: .float 12.3
k3: .float 18.23
k4: .float 8.23
.text
main:
li $v0,6
syscall
add.s $f5,$f5,$f0
li $v0,6
syscall
add.s $f6,$f6,$f0
l.s $f1,k1
l.s $f2,k2
l.s $f3,k3
l.s $f4,k4
mul.s $f1,$f1,$f5
mul.s $f1,$f1,$f6
mul.s $f2,$f2,$f6
mul.s $f3,$f3,$f5
sub.s $f0,$f1,$f2
sub.s $f0,$f0,$f4
add.s $f12,$f0,$f3
li $v0,2
syscall
li $v0, 10 
syscall