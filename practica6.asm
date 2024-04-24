ExitProcess proto

.data
productos QWORD 20
ventaDiaFestivo QWORD 3
ventaDiaNormal QWORD 1
dias QWORD 3
inventorio QWORD 50
ventas QWORD 0
pago QWORD 0
residuos QWORD 0

.code
main proc
	 
	mov rcx,dias
	
	mov rax,1
	push rax
	mov rax,2
	push rax
	mov rax,3
	push rax
	mov rax,4
	push rax
	mov rax,5
	push rax
	mov rax,6
	push rax
	mov rax,7
	push rax
	mov rax,8
	push rax
	mov rax,9
	push rax
	mov rax,10
	push rax
	mov rax,11
	push rax
	mov rax,12
	push rax
	mov rax,13
	push rax
	mov rax,14
	push rax
	mov rax,15
	push rax
	mov rax,16
	push rax
	mov rax,17
	push rax
	mov rax,18
	push rax
	mov rax,19
	push rax
	mov rax,20
	push rax

	diaSiguiente:
		mov rdx,4

		cmp rcx,8
		je DiaFestivo

		cmp rcx,5
		je DiaFestivo

		cmp rcx,3
		je DiaFestivo

		cmp rcx,1
		je DiaFestivo
	
		cmp rcx,12
		jne DiaNormal

		DiaFestivo:
			cmp rax,2
			jle entrega

			pop rax
			add rbx,1
			mov ventas,rbx
			
			sub rdx,1
			cmp rdx,3
			je DiaFestivo

			
			cmp rdx,2
			je DiaFestivo
			
			
			cmp rdx,1
			je DiaFestivo
			
			
			dec rcx
			cmp rcx,0
			jne diaSiguiente

			cmp rcx,0
			je pagoSemanal



		DiaNormal:
			pop rax
			add rbx,1
			mov ventas,rbx
			dec rcx

			cmp rcx,0
			jne diaSiguiente

			cmp rax,2
			jb entrega

			cmp rcx,0
			je pagoSemanal
	
		entrega:
			mov rax,3
			push rax
			mov rax,4
			push rax
			mov rax,5
			push rax
			mov rax,6
			push rax
			mov rax,7
			push rax
			mov rax,8
			push rax
			mov rax,9
			push rax
			mov rax,10
			push rax
			cmp rcx,0
			jne diaSiguiente

			cmp rcx,0
			je pagoSemanal
		

		pagoSemanal:
			mov rcx,dias
			mov rax,rbx
			mov rdx,0

			div rcx
			mov pago,rax
			mov residuos,rdx

call ExitProcess

main endp
end
