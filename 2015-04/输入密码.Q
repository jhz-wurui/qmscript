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
MacroID=d1fbffad-ff38-4ca2-a2b0-704336acd3e6
Description= ‰»Î√‹¬Î
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
Call Lib.RC.checkApp(12)


SetSimMode 2


While True
    MoveTo 715,378
    Delay 100
    LeftClick 1
    Delay 100
    Call Lib.º¸≈Ã.KeyList("940123", 2, 40)
    
    Delay 2000

    MoveTo 715,405
    Delay 100
    LeftClick 1
    Delay 100
    Call Lib.º¸≈Ã.KeyList("940123", 2, 40)

    Delay 1000

    MoveTo 719, 432
    Delay 100
    LeftClick 1
    
    Delay 60*1000
Wend
