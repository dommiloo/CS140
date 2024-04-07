        .data
        val1:   .word 0x12345678
        .text
        .globl main
main:   lh $t0, val1    # $t0 is 5678
        lb $t1, val1    # $t1 is 78. # little endian system
