; ----------------------------------------------------------------------------------------
; Writes "Hello, World" to the console using only system calls. Runs on 64-bit macOS only.
; To assemble and run:
;
;    nasm -f macho64 hello_via_syscall.asm && ld -macosx_version_min 10.7.0 hello_via_syscall.o -no_pie  
; ----------------------------------------------------------------------------------------

mode:          BITS 64

begin:    global    start

          SECTION   .data
          message:  db "Hello, World", 10   ; note the newline at the end

	  section   .text
start:    mov       rax, 0x02000004         ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, message            ; address of string to output
          mov       rdx, 13                 ; number of bytes
          syscall                           ; invoke operating system to do the write
      
          mov       rax, 0x02000001         ; system call for exit
          xor       rdi, rdi                ; exit code 0
          syscall                           ; invoke operating system to exit
