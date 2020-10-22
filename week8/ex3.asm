.data
e: .float 2.71828
pi: .float 3.1415
.text
main:
	l.s $f1, e
	l.s $f2, pi
	mul.s $f3,$f1,$f1
	div.s $f12,$f3,$f2
	li   $v0, 2      
	syscall
	li   $v0, 10      
	syscall   