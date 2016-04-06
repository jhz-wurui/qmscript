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
MacroID=e991e2e3-c128-4ea5-bc95-7a9b47def7c1
Description=多线程临界区设计
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
Global index

Call Lib.临界区.创建全局文件()

index = 0

For 4
    BeginThread 读取
    Delay 100
Next

Sub 读取
    Dim tid,队列
    tid = GetThreadID
    While True
        //加入队列
        Call Lib.临界区.加入队列()
		 		 
        Do
            //判断是否可以操作
            队列 = Lib.临界区.读取队列()
            //TracePrint 队列
            队列 = split(队列, ",")
            
            If UBound(队列) >= 0 Then 
                If 队列(0) = cstr(tid) Then 
                    //表示可以操作了
                    Call Lib.临界区.进入临界区()
                    TracePrint "【" & tid & "】:" & index
                    index = index + 1
                    Call Lib.临界区.离开临界区()
                    Delay 100
                    Exit Do 
                End If
            End If
            Delay 10
        Loop 
        Delay 10
    Wend
End Sub
