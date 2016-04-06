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
MacroID=79e6d02a-6afe-46a0-be4d-d4be8fb3cd90
Description=截图助手
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
UEsDBBQAAgAIANCzd0Yd2+msaQQAAAg0AAAJABEAVUlQYWNrYWdlVVQNAAcQlBBVEJQQVRCUEFXtWktvU0cU/q6dh03Jk5AESiA8Snk/EugLhCCoVJFCi0jaRSUWDhgUYezIsUXoj+iy+1ZiDxJSNyy6aCRWNAt+AGzYsmNHzDf3QYYoKffMTBlCfayT49ie+82cmTnnm3NvFpEs/tPz9Pf7W59hhZxBFkuNPNq0z4JYQ+kGMvH/S41GI/m40ZR1Ja+oLfEcttO2UtWc56gbqHnqJ9QO6kZqZzT16KL2UDdRe6l91AHqZmo/dTC+5lLTxR+0XEaFrxqG8S3KtFXcgUT6uWKSawXv+O3Z6T9e1IuLQVa974g++xHjOAZzySEIEvyud+AmVv/uPKYwYdGDDRp+qwH+FP09iyK+RwG3aKXSyyisz2fadi2xTfbox6RNSS8XKtVbFtsPqv1xi/YB7MS2vW95svjIyXWukIy9NGhnGneW4588/gQxz1Cisk4B0ygZ9qETmUDxk/aYe6Zpk9Hi30+YwRzVtAfdxN+IZd6bpk1Ww79M1AKu4Qf6oSTMvXH8D9oQcbW0+C0a/hTx55n3LeY/kM6/fl44T/ZRolYNe9JnsP5atfEv449xHq7iphw/5DN5gf/bVsz/VUv/KyqVE+C3I+LwSn7myqty/RX513D/if2f08Y/Qd/Lvf72+Dvj66XFz2v4F4hftvO/ePxqr55+s/4U/zxugR8EKp7tQHQOW03+jX/6lper+yzs48XJ4clCeW54slidub5G+4nCdLFkgR+2tyAw652/ODh/hPF/m2D/qXyd5H8f/EPl66Su5YJ/qFpHn2D8HXDLP7bQbhfgd8It/1A1oAEBfhf88o9uRDFYiQP+EeIPCcbfA6f8IxxPvwC/V8N/8PzPhcd/P1x6uOgn/tief76iHqb+Rh03aO87/trmP1txwT+3Iqr7pl1/m+CXf/bBLf/8NN7TafE3wy//VLEi4Z/nGH1mcIN9UFm4/F7OXwPQ43+Vca/MHDhLWxX3YdAAf1DDP4c68SqYpBd+eU/11y3Q47/i/yMW8x/Vn1UM3LXGbz5k/j9Wr9UqZdv25gR+vfP3ew8W7trUX33cf1D5IuHfPvi/itft8XsX/H8f7R6kj//b4JT/i8c/BLf8fz/t54Lxb4df/q9qJcn500f9cRhu64/qensF/t+p4duKLX9fYABV62coA3xn0D4Dv+Kbv4+XZ+u1scq8aXsX/P8A7WeC9bcLTvl/cIh2twB/N9zy/4PxnkqLvwd++b+aq4T/X2Lumaf3S8xChv4X4+/FSv47ajH+4A3+Wk9x/MfPX4T55xvB/KtcmYvf++A/iq/kV8QPUw75f79/L3jkZlX5NV4Pf9ERYwbts5b9d8F/v6AdEaz//XBb//6S9pQA/wDc8l+1d04K8A/io7r/HuKfFoz/ENzWv4/QnhDgH4bb+++qBj0qwD8Cv/XPo3DLf76Or5kW/xj88h+1X33WP0e08V/iqp/j63a4B66ZxB8x/ijcnf98n3+aYicXUecOqHEPTFDL4hxssv5POFx/AIyef0YTP5TXUEsBAhcLFAACAAgA0LN3Rh3b6axpBAAACDQAAAkACQAAAAAAAAAAAACAAAAAAFVJUGFja2FnZVVUBQAHEJQQVVBLBQYAAAAAAQABAEAAAAChBAAAAAA=


[Script]
path = Form1.InputBox1.Text

首页 = path & "\首页.png"

TracePrint 首页

尾页 = path & "\尾页.png"




While True
    Key=WaitKey()    
    //脚本运行到这一行会暂停,当用户按下键盘后继续执行,并且把用户的按键码保存在变量Key里   
    If Key = 45 Then    
        TracePrint "首页"
        //截首图
        Call 截图(86,97,1132,661,首页)
    End If
     	
    If Key = 46 Then    
        TracePrint "尾图"
        KeyPress "End", 1
        Delay 1500
        //截首图
        Call 截图(138,99,1203,622,尾页)
    End If    	
Wend


Sub 截图(x1,y1,x2,y2,str)
    Call Plugin.File.DeleteFile(str)
	
    //ctrl+alt+a
    KeyDown 17, 1
    KeyDown 18, 1
    KeyPress 65, 1
    KeyUp 18, 1
    KeyUp 17, 1

    Delay 100

    moveto x1, y1

    Delay 100

    leftdown 1

    Delay 100
    moveto x2, y2

    Delay 100

    leftup 1

    Delay 100
	
    //ctrl+s
    KeyDown 17, 1
    KeyPress 83, 1
    KeyUp 17, 1
	
    Delay 800
	
    SayString str
	
    Delay 200
	
    KeyPress "Enter", 1
End Sub

Event Form1.Button1.Click
    dirPath=Plugin.File.SelectDirectory() 
    Form1.InputBox1.Text = dirPath
End Event
