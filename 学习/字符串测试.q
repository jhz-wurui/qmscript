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
Description=�ַ�������
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
IsFile = Plugin.File.IsFileExit("c:fuzhu����.ini")
//�������򴴽�
If not IsFile  Then 
    Dim fso, MyFile
    Set fso = CreateObject("Scripting.FileSystemObject")
    //���� 
    Set MyFile = fso.CreateTextFile("c:fuzhu����.ini", True)//true����Ը������е�ͬ���ļ�
    MyFile.Close  //close�Ǳ�Ҫ��,��Ҫʡ 
    Call Plugin.File.WriteINI("��¼", "��", 1, "c:fuzhu����.ini")
End If
diff1 = abs(DateDiff("s", time, t1))
If Lib.�ַ���.isEmpty(data) Then 
diff1 = abs(DateDiff("s", time, t1))

End If
�ȴ���ʼʱ�� = time
Do
    diff = abs(DateDiff("s", time, �ȴ���ʼʱ��))
    If diff > 30 Then 
        //================�쳣��ʱ������====================
        TracePrint "30��Ϸ���ڵĵ��Ŷ�û�г�����"
        EndScript 
    End If    	
    dm_ret = dm.FindColor(281,329,392,391,"91fdfd-050505|c80505-050505|ffcc00-050505",1.0,0,intX,intY)
    If intX >= 0 and intY >= 0 Then
        TracePrint "�ҵ����Ե�½����������ɫ��"
        Exit Do
    Else 
        dm_ret = dm.SetWindowState(hwnd,12)
    End If
    Delay 2000
Loop
t1=time
Do
	If abs(DateDiff("s", t1, time)) > 60 Then 
	    //================�쳣��ʱ������====================
	    TracePrint "��ʱδ���ֵ�½"
	    EndScript 
	Else 
	    dm_ret = dm.FindPic(968,391,1117,454,"���ٵ�¼.bmp","000000",0.9,0,intX,intY)
	    If intX >= 0 and intY >= 0 Then
	        TracePrint "�ҵ����ٵ�½"
	        Exit Do
	    Else 
	        Delay 1000
	        dm_ret = dm.SetWindowState(hwnd, 12)
	    End If	
	End If
Loop
