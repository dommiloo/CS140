## shiftTwo.asm
## 
## Program to logical shift left a pattern
        .text
        .globl  main

main:
        ori      $8, $0, 0xFFFFFFFF       # put bit pattern into register $8
        sll      $9, $8, 2          # shift left logical by two
        srl      $9, $9, 2          # shift left logical by two

## End of file
