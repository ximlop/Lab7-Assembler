.text
.align 2
.global main
.type main, %function

main:
    push {r4, r5, r6, lr}  @guardan los registros

    @@ Ejercicio
    mvn r0, #0
    mov r1, #1

    cmp r0, r1
    bgt signo_mayor
    mov r2, #0
    b sin_signo

    signo_mayor:
        mov r2, #1
    sin_signo:
        cmp r0, r1
        bhi unsigned_mayor
        mov r3, #0
        b fin
    unsigned_mayor:
        mov r3, #1
    fin:
        mov r4, r2
        mov r5, r3


    @@ Para imprimir

    ldr r0, =formato
    mov r1, r4
    mov r2, r5
    bl printf

    mov r0, #0
    pop {r4, r5, r6, pc}

.data
.align 2
formato:
    .asciz "r2 = %d, r3 = %d\n"
.section .note.GNU-stack, "", %progbits
