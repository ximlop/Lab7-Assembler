.text
.align 2
.global main
.type main, %function

main:
    push {r4, r5, r6, lr}  @guardan los registros

    @@ Ejercicio
    mov r0, #9
    mov r1, #9

    CMP r0, r1
    bge r0_es_mayor
    mov r2, r1
    b fin

    r0_es_mayor:
        mov r2, r0
    fin:
        mov r4, r0
        mov r5, r1
        mov r6, r2


    @@ Para imprimir
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
    .asciz "r0 = %d, r1 = %d, mayor/igual = %d\n"
.section .note.GNU-stack, "", %progbits
