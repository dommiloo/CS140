# Title:  					Filename:
# Author:  				Date:
# Description:
# Input:
# Output:
# 
# #########
# cin >> num;
# cout << num;


################# Data segment #####################
.data
	num: 	.word	0	
################# Code segment #####################
.text
.globl main
main:  	
	li		$v0, 5		# Request the system call for Read Integer 
	syscall 


	ori		$t0, $v0, 0	
	sw		$t0, num


	ori		$a0, $v0, 0 # Set the argument register to print integer
	li		$v0, 1		# Request the system call for Read Integer 
	syscall 


	li $v0, 10  # Exit program
	syscall