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
Description=���߳��ٽ������
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

Call Lib.�ٽ���.����ȫ���ļ�()

index = 0

For 4
    BeginThread ��ȡ
    Delay 100
Next

Sub ��ȡ
    Dim tid,����
    tid = GetThreadID
    While True
        //�������
        Call Lib.�ٽ���.�������()
		 		 
        Do
            //�ж��Ƿ���Բ���
            ���� = Lib.�ٽ���.��ȡ����()
            //TracePrint ����
            ���� = split(����, ",")
            
            If UBound(����) >= 0 Then 
                If ����(0) = cstr(tid) Then 
                    //��ʾ���Բ�����
                    Call Lib.�ٽ���.�����ٽ���()
                    TracePrint "��" & tid & "��:" & index
                    index = index + 1
                    Call Lib.�ٽ���.�뿪�ٽ���()
                    Delay 100
                    Exit Do 
                End If
            End If
            Delay 10
        Loop 
        Delay 10
    Wend
End Sub
