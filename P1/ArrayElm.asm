# Title:  					Filename:
# Author:  				Date:
# Description:
# Input:
# Output:
################# Data segment #####################
.data
	num1: 	.word	10, 20, 30
	.align	4
	num2: 	.space  12	
	.align	4
	tmp:	.word	100	
################# Code segment #####################
.text
.globl main
main:  	
	lui		$t0, 0x1001 			# $t0 : Base address of num1
	lw		$t2, 8($t0)

	la		$t7, num2
	lw		$t1, tmp;

	lui		$t3, 0x1001				# $t3 : Base address of num2
	ori		$t3, $t3, 0x0010
	addu	$t4, $t1, $t2
	sw		$t4, 8($t3)
	
			
	li $v0, 10  # Exit program
	syscall