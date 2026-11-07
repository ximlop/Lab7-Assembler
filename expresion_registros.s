.text
.align 2
.global main
.type main, %function

main:
    push {r4, r5, r6, lr}  @guardan los registros

    @@ Ejercicio
    mov r0, #12
    mov r1, #8
    mov r2, #3

    add r3, r1, r0
    mul r3, r3, r2

    @@ Para imprimir
    ldr r0, =formato
    mov r1, r3
    bl printf

    mov r0, #0
    pop {r4, r5, r6, pc}

.data
.align 2
formato:
    .asciz "r3 = %d\n"
.section .note.GNU-stack, "", %progbits
