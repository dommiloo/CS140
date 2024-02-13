## Program to represent 1.0

        .data
##val1:    .float  1.0 
val1:    .float  0x00800000 
	.text
        .globl  main

main:
    li $v0, 2 	# print floating service code
	lwc1 $f12, val1
	move $a0, $v0
	mfc1 $t1, $f12
	syscall
## End of file