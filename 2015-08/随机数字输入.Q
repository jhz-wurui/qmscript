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
MacroID=30f8ca0a-4be9-41e9-8669-9485b2cf3aa7
Description=随机数字输入
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
//Call Lib.RC.checkApp(68)

Do
	返回值 = Lib.ICEFRAG.算法_随机数(45, 55)
	
	TracePrint 返回值
	
	//Call Lib.键盘.KeyList(cstr(返回值), 2, 30)
	SayString 返回值
	
	Delay 10
	
	KeyPress "Enter", 1
	
	Delay 100
Loop
