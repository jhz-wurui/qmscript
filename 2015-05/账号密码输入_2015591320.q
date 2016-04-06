[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=19
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=93a0bf45-1326-4972-82e4-03981a4f7ef1
Description=账号密码输入
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
UEsDBBQAAgAIAIxqqUaAchLvwgMAAAgmAAAJABEAVUlQYWNrYWdlVVQNAAeWCU5VlglOVZYJTlXtWU1PE0EYfrcF+gGWlo/yKZZPFS96NyaWSCQBVFpNNNGkIgpxWci2KP4Fr/4Czl400bs/wESu3vTgzZMHblKf2Z21UwTcmdm6NuElL1Pazj4z77xfzxAlV3Y/Zb7svB38SgfkCkVpv5qgNuE9g6sjaaII/3u/Wq16b1dPpKnkJ7SFnyE761ZoDJqAxqFJ6CloO7QDmnKPnjqhGT5v/8SMTStLtIGfCuXoGlkYbXpBMpKFx3jPMv7y3Vz30ue+l7tGFK8/JNz3btMcXSR1iZNhePiRI76T/n7LwfXwxc9mqEjzGitIcvwsj53j8L1R/KwIe2/SCi1SidYxykoXRRz8DM+9fue18NGL3/9RT6TxMrthr2uEH7H5lzTmG6QnuvN15d2bj9909i8Rsg2Zr5p3avkvUtfz+T0zL1eyqlOih2QqriGF/NfO+xS/+BEh/92hNSpDVVeQVth/VMBfAmqJHtEN2MGUrL1e/u/gz/SL3yLgF4G/jbqvcf6G7P5bhfOfQfdhQm3FlfQo4LcJ+6/h53EOy/RUHt/plzsl7B87cP7LmvZn/XlcAj9Obg8vyn0ExR41n8RCxt873OZOWVoo5Aolq5wrrNhrjxuEP/n6gdb8e8g8NvLPCn6rCMu/vTym/PpfQvD/ecSefNTV+3+aP88vfvLQ+C9gHauwg1w17Ef8dxPLw/7x2wX8q+j+N50aYEMtrEGuCmWx/wS5vNwvfoeAP4u9W3r5R7r+sXx1+ff+TVTfJ1gDs7ulkv+l8VN151+C/StYA7ND3jkHrxLUfONoOadQfzoF/LzzfDf+/OAd4n9GD9Xu3fzMSQv4uvlDt//UlTlrc6uS39jWna/awzc7fynC8ytO76vifU7+kY6/jOB/N4G/DXQTXbiKpBTwu+rin93/qDO4JE7Qwx44Kt6OuX8K6v5nkvznf1av4vx1GPyP5St+/RcI/zuDcURi/70UKP8zchinJPCzFCz/G8TYJ4HfR+HyP/H/RQHwP2n/66dg+d8QxnEJ+w9QsPxvFOOwBP4g/cn/VEW3/t91cgDRD2TFVwrzw66f0ZDxdflnAPxPOv6GKFj+N8Fj2i/+MAXL/84T4wH+8U9TsPzvLMYxCfwRCpf/sXodJv/Lkdh/llD/y/Sc8zBZ6VLAHxXwF2gLFmD8cx5qSfcg7P6T+dMFifMfE/CbXXT56/T7Va35QzvFprbfouP364gCU/n+Qdb/xwX/uw68Z8q3H27+mya5+4+JA/lvGTFY/of8d1LAZ1XHdpBNfvvU+Pw3JeD/AlBLAQIXCxQAAgAIAIxqqUaAchLvwgMAAAgmAAAJAAkAAAAAAAAAAAAAgAAAAABVSVBhY2thZ2VVVAUAB5YJTlVQSwUGAAAAAAEAAQBAAAAA+gMAAAAA


[Script]
账号密码 = Form1.InputBox1.Text

账号 = split(账号密码, "----")(0)

密码 = split(账号密码, "----")(1)

TracePrint 账号

SetSimMode 2
Set dm = createobject("dm.dmsoft")
TracePrint dm.ver()

Hwnd = Plugin.Window.Find(0, "开心")
TracePrint hwnd
Call Plugin.Window.Active(Hwnd)
Call Plugin.Window.Show(Hwnd)
Call Plugin.Window.Move(Hwnd, 0, 0)
Delay 200

dm_ret = dm.BindWindow(hwnd, "normal", "normal", "dx", 0)

dm.moveto 220,289
Delay 100
dm.leftclick 

Delay 100

KeyListByDm 账号, 100

MoveTo 221, 328
Delay 100
LeftClick 1
//dm.moveto 218, 323
//Delay 100
//dm.leftclick 

KeyListByDm 密码, 100





Sub KeyListByDm(键码组,毫秒延时)
    //例子：Call lib.键盘.KeyList("aA@2?"">.',/|\=-+_)(*&^QAsD",0,50)
    //需要注意的是：当输入一个引号时（"）必须输入一对（""）
    //模拟方式：【0普通模拟，1硬件模拟，2超级模拟】
    Dim 键码(46)
    键码(0) ="a〓A〓65"
    键码(1) ="b〓B〓66"
    键码(2) ="c〓C〓67"
    键码(3) ="d〓D〓68"
    键码(4) ="e〓E〓69"
    键码(5) ="f〓F〓70"
    键码(6) ="g〓G〓71"
    键码(7) ="h〓H〓72"
    键码(8) ="i〓I〓73"
    键码(9) ="j〓J〓74"
    键码(10)="k〓K〓75"
    键码(11)="l〓L〓76"
    键码(12)="m〓M〓77"
    键码(13)="n〓N〓78"
    键码(14)="o〓O〓79"
    键码(15)="p〓P〓80"
    键码(16)="q〓Q〓81"
    键码(17)="r〓R〓82"
    键码(18)="s〓S〓83"
    键码(19)="t〓T〓84"
    键码(20)="u〓U〓85"
    键码(21)="v〓V〓86"
    键码(22)="w〓W〓87"
    键码(23)="x〓X〓88"
    键码(24)="y〓Y〓89"
    键码(25)="z〓Z〓90"
    键码(26)="`〓~〓192"
    键码(27)="1〓!〓49"
    键码(28)="2〓@〓50"
    键码(29)="3〓#〓51"
    键码(30)="4〓$〓52"
    键码(31)="5〓%〓53"
    键码(32)="6〓^〓54"
    键码(33)="7〓&〓55"
    键码(34)="8〓*〓56"
    键码(35)="9〓(〓57"
    键码(36)="0〓)〓48"
    键码(37)="-〓_〓189"
    键码(38)="=〓+〓187"
    键码(39)="[〓{〓219"
    键码(40)="]〓}〓221"
    键码(41)="\〓|〓220"
    键码(42)=";〓:〓186"
    键码(43)="'〓""〓222"
    键码(44)=",〓<〓188"
    键码(45)=".〓>〓190"
    键码(46)="/〓?〓191"
    //Dim KeyS()
    Dim 数量,判断,i,m,n
    数量=Len(键码组)
    ReDim KeyS(数量)
    For i=0 to 数量-1
        KeyS(i)=Mid(键码组,i+1,1)
        判断=False
        For n=0 to 46
            MyKeyS=Split(键码(n),"〓")
            If KeyS(i)=MyKeyS(0) Then
                判断=True
                 
                dm.KeyPress Clng(MyKeyS(2))
                
                Exit For
            ElseIf KeyS(i)=MyKeyS(1) Then ://需要按住Shift键来模拟
                判断=True
                dm.KeyDown 16
                dm.KeyPress Clng(MyKeyS(2))
                dm.KeyUp 16
                Exit For
            End If
        Next
        m = Plugin.Sys.GetTime() + 毫秒延时
        Do   
            Delay 5
        loop Until Plugin.Sys.GetTime() >= m
        If 判断=False Then Exit Sub
    Next
End Sub
