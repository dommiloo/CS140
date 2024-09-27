## A72.asm
## 
## Program to logical shift left a pattern
        .text
        .globl  main

main:
        ori      $8, $0, -2       # put bit pattern into register $8
        sll      $9, $8, 1          # shift left logical by two
        sra      $10, $9, 1          # shift left logical by two

## End of file
