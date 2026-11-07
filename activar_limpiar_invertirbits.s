.text
.align 2
.global main
.type main, %function

main:
    push {r4, r5, r6, lr}  @guardan los registros

    @@ Ejercicio
    mov r0, #0X2A
    
    orr r0, r0, #1
    mov r4, r0
    BIC r0, r0, #8
    mov r5, r0
    EOR r0, r0, #0X20

    @@ Para imprimir
    mov r6, r0
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
    .asciz "Activar con ORR: 0x%x, limpiar bit3 con BIC: 0x%x, invertir bit5 EOR: 0x%x\n"
.section .note.GNU-stack, "", %progbits
