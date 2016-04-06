[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=bacd3f40-85d0-47ce-9b92-742508403365
Description=变量作用范围
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
//参数都是复制的,这点和java是一样的基础类型都是复制.对象类型也是复制无法改变原来参数!以后可以放心了,按键和java全局和局部是一样
//
//a = 10
//
//Call cl(a)
//
//TracePrint a

dim arr(3)

arr(0) = 2
arr(1) = 3
arr(2) = 4

Call handelArr(arr)

For i = 0 To UBound(arr)
	TracePrint arr(i)
Next
Sub cl(b)

	a=8
	
	TracePrint b
	
	b = a
	
	TracePrint b
	
	TracePrint a
	
	
End Sub


Sub handelArr(arr)
	For i = 0 To UBound(arr)
		arr(i) = 1
	Next
End Sub
