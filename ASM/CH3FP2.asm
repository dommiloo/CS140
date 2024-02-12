## Program to represent 1.0

        .data
val1:    .float   12.25 
	.text
        .globl  main

main:
	lwc1 $f12, val1
	mfc1 $t1, $f12

## End of file
