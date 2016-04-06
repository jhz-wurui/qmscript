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
MacroID=315fc446-d3e1-491b-a83e-75336dc4513b
Description=Ñ­»·°´¼ü
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

t1 = time
t2 = time
While True
    diff1 = abs(DateDiff("s", time, t1))
	
    If diff1 >= 16 Then 
        Delay 1000
        dm.keypress 50
        Delay 1000
        t1=time
    End If

    diff2 = abs(DateDiff("s", time, t2))
    If diff2 >= 60 Then 
        Delay 1000
        dm.keypress 49
        Delay 1000
        t2=time
    End If	
Wend
