BITS 64

EXTERN _printf

GLOBAL entrypoint 

SECTION .data
       msg:  db "Hello world", 10

SECTION .text
entrypoint:
       push rbx
       lea  rdi, [rel msg]
       call _printf
       pop rbx
       ret
       mov rax, 0x02000001
       xor rdi, rdi
       syscall

