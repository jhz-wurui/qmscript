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
MacroID=77d9e793-f332-4415-9dd9-b819725b8904
Description=字符串测试
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
IsFile = Plugin.File.IsFileExit("c:fuzhu湖南.ini")
//不存在则创建
If not IsFile  Then 
    Dim fso, MyFile
    Set fso = CreateObject("Scripting.FileSystemObject")
    //创建 
    Set MyFile = fso.CreateTextFile("c:fuzhu湖南.ini", True)//true则可以覆盖已有的同名文件
    MyFile.Close  //close是必要的,不要省 
    Call Plugin.File.WriteINI("记录", "行", 1, "c:fuzhu湖南.ini")
End If
diff1 = abs(DateDiff("s", time, t1))
If Lib.字符串.isEmpty(data) Then 
diff1 = abs(DateDiff("s", time, t1))

End If
等待开始时间 = time
Do
    diff = abs(DateDiff("s", time, 等待开始时间))
    If diff > 30 Then 
        //================异常暂时不处理====================
        TracePrint "30游戏窗口的电信都没有出来！"
        EndScript 
    End If    	
    dm_ret = dm.FindColor(281,329,392,391,"91fdfd-050505|c80505-050505|ffcc00-050505",1.0,0,intX,intY)
    If intX >= 0 and intY >= 0 Then
        TracePrint "找到可以登陆服务器的颜色了"
        Exit Do
    Else 
        dm_ret = dm.SetWindowState(hwnd,12)
    End If
    Delay 2000
Loop
t1=time
Do
	If abs(DateDiff("s", t1, time)) > 60 Then 
	    //================异常暂时不处理====================
	    TracePrint "超时未出现登陆"
	    EndScript 
	Else 
	    dm_ret = dm.FindPic(968,391,1117,454,"快速登录.bmp","000000",0.9,0,intX,intY)
	    If intX >= 0 and intY >= 0 Then
	        TracePrint "找到快速登陆"
	        Exit Do
	    Else 
	        Delay 1000
	        dm_ret = dm.SetWindowState(hwnd, 12)
	    End If	
	End If
Loop
