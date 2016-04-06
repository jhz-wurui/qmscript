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
MacroID=d5817a89-e4c2-4674-afe4-5cc1036caab4
Description=分列展示
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
Call Lib.DMEX.dmzcDefault()

TracePrint dm.ver()

//hwnds = dm.EnumWindow(0, "无标题 - 记事本", "", 1 + 4 + 8 + 16)
//
//TracePrint hwnds
//
//hwnds = split(hwnds, ",")
//
//x = 0
//
//y = 0
//
//count = 0
//
//For i = 0 To UBound(hwnds)
//    TracePrint "当前处理窗口" & hwnds(i)
//	
//    hwnd = clng(hwnds(i))
//	
//    dm_ret = dm.SetWindowState(hwnd,12)
//    Delay 200
//    dm_ret = dm.SetWindowSize(hwnd, 800, 600)
//    Delay 100
//    dm.MoveWindow hwnd, 0 + x * 300, y * 200
//    
//    count = count + 1
//    
//    x = x + 1
//	
//	If count > 3 Then 
//		y = y + 1
//		count = 0
//		x = 0
//	End If
//Next


For i = 0 To 15
	Call 设置窗口位置(3871996, i)
	
	Delay 2000
Next

Sub 设置窗口位置(hwnd,index)
	//一行多少个 4 控制
	Dim x, y
	
	x = index mod 4
	
	y = int(index/4)
	
	//300是 横向移动多少 200是纵向移动多少
	dm.MoveWindow hwnd, 0 + x * 300, y * 200
End Sub
