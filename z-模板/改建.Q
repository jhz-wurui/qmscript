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
MacroID=7894c4bd-dcdc-4fe6-9c18-c2904dfa268e
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
//SetSimMode 2
//While True
//    Key=WaitKey()    
//    //脚本运行到这一行会暂停,当用户按下键盘后继续执行,并且把用户的按键码保存在变量Key里   
//    If Key = 86 Then 

//    End If

//Wend


While True
    last_click=WaitClick()  
    //脚本运行到这一行会暂停,当用户按下键盘后继续执行,并且把用户的按键码保存在变量Key里   
    If Key = 32769 Then 
    End If
    Delay 1
Wend
