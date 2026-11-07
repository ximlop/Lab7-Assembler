.text
.align 2
.global main
.type main, %function

main:
    push {r4, r5, r6, lr}  @guardan los registros

    @@ Ejercicio
    mov r0, #18
    add r1, r0, #7
    sub r1, r1, #4

    @@ Para imprimir
    mov r4, r0
    mov r5, r1

    ldr r0, =formato
    mov r1, r4
    mov r2, r5
    bl printf

    mov r0, #0
    pop {r4, r5, r6, pc}

.data
.align 2
formato:
    .asciz "r0 = %d, r1 = %d\n"
.section .note.GNU-stack, "", %progbits
