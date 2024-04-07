## Program that multiply the Positive Largest number by 1.0E3 

        .data
val1:    .word  0x7F7FFFFF      # Positive Largest Number
val2:    .float 1000.0          # 1.0E3
	.text
        .globl  main

main:
    li $v0, 2 	# print floating service code
    l.s	    $f5, val1
    l.s 	$f7, val2 
    mul.s 	$f9, $f5, $f7
    li 	    $v0, 2		
    mfc1   $t0, $f9
    mov.s   $f12, $f9
    syscall
## End of file