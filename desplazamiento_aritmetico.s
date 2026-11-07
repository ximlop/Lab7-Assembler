.text
.align 2
.global main
.type main, %function

main:
    push {r4, r5, r6, lr}  @guardan los registros

    @@ Ejercicio
    mov r0, #48
    mov r1, r0, LSR #1
    mov r2, r0, LSL #2

    @@ Para imprimir
    mov r4, r0
    mov r5, r1
    mov r6, r2

    ldr r0, =formato
    mov r1, r4
    mov r2, r5
    mov r3, r6
    bl printf

    mov r0, #0
    pop {r4, r5, r6, pc}

.data
.align 2
formato:
    .asciz "r0 = %d, r1 = %d, r2 = %d\n"
.section .note.GNU-stack, "", %progbits
