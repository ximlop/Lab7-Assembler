.text
.align 2
.global main
.type main, %function

main:
    push {r4, r5, r6, r7, r8, lr}  @guardan los registros

    @@ Ejercicio
    mov r0, #0xAC
    mov r1, #0xCA
   
    AND r2, r0, r1
    ORR r3, r0, r1
    EOR r4, r0, r1

    @@ Para imprimir
    mov r5, r2
    mov r6, r3
    mov r7, r4

    ldr r0, =formato
    mov r1, r5
    mov r2, r6
    mov r3, r7
    bl printf


    mov r0, #0
    pop {r4, r5, r6, r7, r8, pc}

.data
.align 2
formato:
    .asciz "r2= 0X%X, r3 = 0X%X, r4=0X%X\n"
.section .note.GNU-stack, "", %progbits
