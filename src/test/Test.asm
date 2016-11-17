; 这是一个测试程序代码，目的是使用 Irvine 提供的汇编语言在 Visual Studio 2015 上的配置。

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