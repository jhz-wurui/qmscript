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
MacroID=12ab4335-549d-40e0-bf15-d743ef9e2abf
Description=wqm�࿪����
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
BeginThread a
BeginThread b
BeginThread c

Sub a
    ������ = "KN5820"
    PID=Plugin.Web.Bind("wqm1.exe")
    list_result = Plugin.Web.HtmlGet("html", "id:" & ������ & "_sites")
    TracePrint list_result
End Sub


Sub b
    ������ = "HU7810"
    PID=Plugin.Web.Bind("wqm2.exe")
    list_result = Plugin.Web.HtmlGet("html", "id:" & ������ & "_sites")
    TracePrint list_result
End Sub

Sub c
    ������ = "KN5890"
    PID=Plugin.Web.Bind("wqm3.exe")
    list_result = Plugin.Web.HtmlGet("html", "id:" & ������ & "_sites")
    TracePrint list_result
End Sub
