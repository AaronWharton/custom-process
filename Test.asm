; ����һ�����Գ�����룬Ŀ����ʹ�� Irvine �ṩ�Ļ�������� Visual Studio 2015 �ϵ����á�

.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO,dwExitCode:DWORD

.code
main PROC
	mov eax,6
	add eax,5

	INVOKE ExitProcess,0
main ENDP
END main