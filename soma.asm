section .data 
    num1 dq 10
    num2 dq 20 
    result dq 0

section .text
    global _start

_start:
    mov rax, [num1]                 ; Move o valor e num1 para rax 
    add rax, [num2]                 ; Adeciona o valor de num2 a rax 
    mov [result], rax               ; Armezana o resultado em result

    mov rax, 60                     ; sys_exit system call 
    xor rdi, rdi                    ; exit code 0
    syscall