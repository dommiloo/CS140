## Program to represent 1.0

        .data
val1:    .word  0x00800000 
val2:    .word  0x007FFFFF
	.text
        .globl  main

main:
    li $v0, 2 	# print floating service code
	lwc1 $f12, val1
	move $a0, $v0
	mfc1 $t1, $f12
	syscall
	lwc1 $f12, val2
	move $a0, $v0
	mfc1 $t2, $f12
	syscall
## End of file