# Title:  					Filename:
# Author:  				Date:
# Description:
# Input:
# Output:
################# Data segment #####################
.data
	var1:	.byte	'A','A','A'	
	.align 	3
	var2: 	.asciiz "BBBBBBB"
	var3: .word	-1000

################# Code segment #####################
.text
.globl main
main:  	
	lw	$t0, var1
	lw	$t1, var2
	lw	$t2, var3
	lb	$t3, var3

			
li $v0, 10  # Exit program
syscall
