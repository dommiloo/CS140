# Title:  					Filename:
# Author:  				Date:
# Description:
# Input:
# Output:

# void swap(int num[], int k)
# {  
#   int temp;
#   temp = num[k]
#   num[k] = num[k+1];
#   num[k+1] = temp;
# }

################# Data segment #####################
.data
	num: 	.word 	1, 2, 3 
################# Code segment #####################
.text
.globl main
main:  	
	la		$a0, num		# load address of num to a0
	li		$a1, 0 			# index  = 1	
	jal		swap			# Call swap function swap( num, 1) 

	li		$a1, 1 			# index  = 1	
	jal		swap			# Call swap function swap( num, 1) 

	li		$a1, 0 			# index  = 1	
	jal		swap			# Call swap function swap( num, 1) 

	li $v0, 10  # Exit program
	syscall

swap:	
	sll		$t0, $a1, 2 	# i * 4 
	add		$t0, $t0, $a0	# t2 = address of num[i]
	lw 		$t1, 0($t0)		# t2 = num[i]
	lw		$t2, 4($t0)		# t3 = num[i+1]
	sw		$t1, 4($t0)		# num[i+1] = t1
	sw		$t2, 0($t0)
	jr		$ra					# jump to $ra
	