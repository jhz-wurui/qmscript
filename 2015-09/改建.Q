[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=49
StopHotkeyMod=2
RunOnce=1
EnableWindow=
MacroID=616c2e42-1889-48eb-9f3b-2cc4e5cd1d63
Description=改建
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
SetSimMode 2
While True
    Key=WaitKey()    
    //脚本运行到这一行会暂停,当用户按下键盘后继续执行,并且把用户的按键码保存在变量Key里   
    If Key = 86 Then 

    End If

Wend
