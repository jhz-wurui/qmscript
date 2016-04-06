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
MacroID=0a0e1b6c-6fe4-4c70-8b8b-2b85dda37d8b
Description=Ã°ÏÕµº°´¼ü
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

Call Lib.RC.checkApp(36)

SetSimMode 2
While True
    t1 = time
    Do
        diff1 = abs(DateDiff("s", time, t1))
        If diff1 > 45 Then 
        	TracePrint "½áÊø°´a"
            Exit Do
        End If
        KeyPress "A", 1
        Delay 100
    Loop
	
    KeyPress "S", 1
	
    Delay 100
	
    KeyPress "Right", 70

	
    Delay 100
	
    t1 = time
    Do
        diff1 = abs(DateDiff("s", time, t1))
        If diff1 > 45 Then 
            Exit Do
        End If
        KeyPress "A", 1
        Delay 100
    Loop
	
    KeyPress "S", 1
	
    Delay 100
	
    KeyPress "Left", 70

	
    Delay 100
Wend
