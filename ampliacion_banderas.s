.text
.align 2
.global main
.type main, %function

main:
    push {r4, r5, r6, r7, r8, lr}  @guardan los registros

    @@ Ejercicio
    mov r4, #0
    mov r5, #0
    mov r6, #0
    mov r7, #0

    ldr r0, =0xFFFFFFFF
    ADDS r1, r0, #1

    movmi r4, #1
    moveq r5, #1
    movcs r6, #1
    movvs r7, #1

    mov r8, r1

    @@ Para imprimir
    ldr r0, =formato1
    mov r1, r8
    mov r2, r4
    mov r3, r5
    bl printf

    ldr r0, =formato2
    mov r1, r6
    mov r2, r7
    bl printf

    mov r0, #0
    pop {r4, r5, r6, r7, r8, pc}

.data
.align 2
formato1:
    .asciz "r1 = %d, N = %d, Z = %d\n"
formato2:
    .asciz "C = %d, V = %d\n"
.section .note.GNU-stack, "", %progbits
