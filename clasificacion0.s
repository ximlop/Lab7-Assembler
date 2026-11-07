.text
.align 2
.global main
.type main, %function

main:
    push {r4, r5, r6, lr}  @guardan los registros

    @@ Ejercicio
    mov r0, #-7

    CMP r0, #0
    beq es_cero
    bgt es_positivo

    mov r1, #2
    b fin

    es_cero:
        mov r1, #0
        b fin
    es_positivo:
        mov r1, #1
    fin:
        mov r4, r0
        mov r5, r1
       

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
    .asciz "r0 = %d, r1 = %d\n"
.section .note.GNU-stack, "", %progbits
