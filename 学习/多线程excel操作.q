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
MacroID=c6042927-da2a-4148-a7fd-a9cc00dbe2d5
Description=���߳�excel����
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

[UIPackage]
UEsDBBQAAgAIAKydpkSTNv1MtAIAAAgcAAAJABEAVUlQYWNrYWdlVVQNAAfCO2lTwjtpU8I7aVPtWMtukkEU/gYol5ZSSrHVegnrLky7b1zQSKKplwCaaKIJVhqJFMxPk7aJL+Bb6CO4d+nCxMSS6APoSzRxIXgG5oexae1/ZkYRw0cOh9uZb+bMzJlvCKOP9uH81zdvl7/hGK4hjE43gaj2mVDWQxoIqfedbrfrf9ydYKzwgyyi5jBGfopMznmcbJosQTajvk8qP8H/gyKa9NhFDtfRIO/hABws0orx2xJn/Ha1mH2dqx2KMNQiI9zDDazCHHEI4fOHzuD1vf7dBsrYtOjBtOKfU3uHy1+mfL9AFbdRwQ55LjJUhfX5DBoXUV7u5z9pE/zbKDS9HYvtBxm/ZhEvYAfb+FHjS/uDk3YeUfE7MogzrTvD+sevP0KrlfLUqeAJ6oZ9SCEkpD6JKe0ZJCak1b/7qKFFZtqDNPEnMdS9QWLCGn+RWCt4ijuUhzrz7FX1X0TR12pB+SMaf5n49+nct5h/wZ1//b6wQeqjTuYZ9iRrsP6mtPEP+fM0D1t4zufv6ZkEI//RY/O/ZZn/WfT1elD+WG/d9vGQVp5H669Kz4b7j53/uDb+Tco9P+u/jj+l2gvKn9D4C8TfsMs/e/xyr64P1p/Un2sW/GLAnznlN7/Tn6PG0ck56/XxVilXqjRauVLVq22fEp/3mnutar65b8g/iDecgnHXL6O4f8yoPSjhQH/0zp9LjP2fVHtQwoX+OA95DgTnn4VT/cHOfwpu9ccF8kuM8c/Bvf64wuAftf5Iw63+kO0tMsY/r/HbgvGXw4l4QHaT7BUVwsdjWD9tz6+P3z+3P71/13m5cnVlFP13oT+XyZ9jrL8MnOpPcZn8AoN/AU71Jy6qPRWUPwun+pN9/5Jz5evPu1R1dvHMavw2978CnX116sHfvH/IWplUr0vEfWB8+st2+PxLcFd/ARj9/+vjJ1BLAQIXCxQAAgAIAKydpkSTNv1MtAIAAAgcAAAJAAkAAAAAAAAAAAAAgAAAAABVSVBhY2thZ2VVVAUAB8I7aVNQSwUGAAAAAAEAAQBAAAAA7AIAAAAA


[Script]
IsFile = Plugin.File.IsFileExit("c:\fuzhu\����.ini")
//�������򴴽�
If not IsFile  Then 
    Dim fso, MyFile
    Set fso = CreateObject("Scripting.FileSystemObject")
    //���� 
    Set MyFile = fso.CreateTextFile("c:\fuzhu\����.ini", True)//true����Ը������е�ͬ���ļ�
    MyFile.Close  //close�Ǳ�Ҫ��,��Ҫʡ 
    Call Plugin.File.WriteINI("������", "��", 1, "c:\fuzhu\����.ini")
End If
 
Sub OnThreadExit()
	TracePrint xuliehao
    Plugin.lxj_Office.lxj_ExcelSave xuliehao
    Plugin.lxj_Office.lxj_ExcelClose xuliehao
End Sub


For 3
    id = BeginThread(��ȡ)
    Delay 100
Next


Sub ��ȡ
    �߳�id = GetThreadID
	
	
    path = Form1.BrowseBox1.Path
    
	TracePrint path
   
    //������Ϊ0�ɱ༭ģʽ,1ֻ��ģʽ
    //������Ϊ0�ɱ༭ģʽ,1ֻ��ģʽ
	xuliehao = Plugin.lxj_Office.lxj_ExcelOpen(path, 0, "", "", 0)

    While True
    	
        index = cint(Plugin.File.ReadINI("������", "��", "c:\fuzhu\����.ini"))
        
        TracePrint index
                
        Call Plugin.File.WriteINI("������", "��", index+1, "c:\fuzhu\����.ini")
    		
        ���к� = Plugin.lxj_Office.lxj_ExcelRead(1, index, 1, xuliehao)
        
        //TracePrint ���к�
				
        If Lib.�ַ���.isEmpty(���к�) Then 
            ExitScript
        End If
            		
        TracePrint "[�߳�id]:" & �߳�id &"���к�"&"====>"&���к�				       
    Wend
End Sub


Sub �ٽ�����(���)
    Call д����(CStr(���), "�ٽ���", "1", "")
End Sub
//------------------------�ٽ�����--------------------------//
Sub �ٽ�����(���)
    Call д����(CStr(���), "�ٽ���", "0", "")
End Sub


Sub д����(����, ����, ��ֵ, ·��)
    If ·�� = "" Then 
        ·�� = "c:\fuzhu\Global.ini"
    End If
    Call Plugin.File.WriteINI(����, ����, ��ֵ, ·��)
End Sub
