        .data
        .text
        .globl main
main:   ori $t0, $0, 20
        ori $t1, $0, -10
        add $s0, $t0, $t1
