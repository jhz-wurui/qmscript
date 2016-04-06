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
MacroID=cd574555-5991-4554-94df-23445934dd81
Description=右键接回车
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
While True
	last_click = WaitClick()
	TracePrint last_click
	If last_click = 32773 Then 
		TracePrint "按回车"
		//KeyPressS "Enter", 1
		KeyPress "Space", 1
	End If
	Delay 10
Wend
