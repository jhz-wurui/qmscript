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
MacroID=b7e5bf5f-57be-40b5-9fed-ebdd6b1637ff
Description=定时执行功能
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=1
QUI=Form1
[Relative]
SetupOCXFile=
[Comment]

[Script]
Do
    If DateDiff("s", time, "21:48:00") <= 0 Then 
        MessageBox "已经到达指定运行时间"
		
		For 20
        	KeyPress "y", 1
        	Delay 1500
        	KeyPress "Enter", 1
        	Delay 100
        Next
        Exit Do
    Else 
        TracePrint "等待运行"
    End If
	
    Delay 100
Loop
EndScript 

//DateDiff详解
//DateDiff(时间间隔,开始时间,结束时间)

/*
	结果值就是 开始时间-结束时间
*/
t1 = time
Do
	diff1 = abs(DateDiff("s", time, t1))
	If diff1 > 20 Then 
		TracePrint "等待超时!操作失败"
	End If	
Loop


Do
    If DateDiff("s", time, "21:00:00") <= 0 Then 
        TracePrint "已经到达指定运行时间"
		
		//你的操作加在这里
		
		
		
		
        Exit Do
    Else 
        TracePrint "等待运行"
    End If
	
    Delay 100
Loop