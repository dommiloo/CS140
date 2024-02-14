## Program to represent 1.0

        .data
val1:    .word  0x7F7FFFFF
val2:    .float 1000.0
	.text
        .globl  main

main:
    li $v0, 2 	# print floating service code
    l.s	    $f5, val1
    l.s 	$f7, val2 
    mul.s 	$f9, $f5, $f7
    li 	    $v0, 2		
    mfc1   $t0, $f9
    syscall
## End of file