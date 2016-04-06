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
MacroID=e7be3cab-c881-4544-9df3-bb3163479bd4
Description=开机自启动自动隐藏测试
Enable=1
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
Hwnd = Plugin.Window.Find(0, "1")

Call Plugin.Window.Hide(Hwnd)

PID=Plugin.Web.Bind("1.exe")

Delay 200

Plugin.lxj_Plug.lxj_HideIcon PID

Plugin.lxj_Icon.lxj_HideIcon 0



While True
	MessageBox "我在偷运行"
	Delay 10000
Wend