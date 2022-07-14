global _start

section .text
_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, msg.len
	syscall; int 0x80

	mov rax, 60
	mov rdi, 0
	syscall ;int 0x80

section .data
msg:	db	"Hello, world!", 10
.len:	equ $ - msg
