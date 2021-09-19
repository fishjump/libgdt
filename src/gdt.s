.section   .text
.global    load_GDT

load_GDT:
    lgdt (%rdi)

    // segment 0x10 = 2 << 3
    mov $0x10, %ax
    mov %ax, %ds
    mov %ax, %es
    mov %ax, %fs
    mov %ax, %ss
    mov %ax, %gs

    pop %rdi
    push $0x08
    push %rdi
    lretq
