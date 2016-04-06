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
MacroID=2ebbf3d2-e21e-4040-bf4c-7b9da1443c1f
Description=redimÑÐ¾¿
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
Dim arr()

For i=0 to  10
	Redim arr(i)
	arr(i) = i 
Next

For i = 0 To UBound(arr)
	TracePrint arr(i)
Next
