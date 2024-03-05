
; nasm x64 intel-syntax

extern printf

.section data
	msg db "Hi"

.section code
	push rbp
	mov rbp, rsp
	sub rbp, 8

	mov QWORD[rbp], db
	call printf

	add rsp, 8
	pop rbp
