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
Description=�˺���������
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
�˺����� = Form1.InputBox1.Text

�˺� = split(�˺�����, "----")(0)

���� = split(�˺�����, "----")(1)

TracePrint �˺�

SetSimMode 2
Set dm = createobject("dm.dmsoft")
TracePrint dm.ver()

Hwnd = Plugin.Window.Find(0, "����")
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

KeyListByDm �˺�, 100

MoveTo 221, 328
Delay 100
LeftClick 1
//dm.moveto 218, 323
//Delay 100
//dm.leftclick 

KeyListByDm ����, 100





Sub KeyListByDm(������,������ʱ)
    //���ӣ�Call lib.����.KeyList("aA@2?"">.',/|\=-+_)(*&^QAsD",0,50)
    //��Ҫע����ǣ�������һ������ʱ��"����������һ�ԣ�""��
    //ģ�ⷽʽ����0��ͨģ�⣬1Ӳ��ģ�⣬2����ģ�⡿
    Dim ����(46)
    ����(0) ="a��A��65"
    ����(1) ="b��B��66"
    ����(2) ="c��C��67"
    ����(3) ="d��D��68"
    ����(4) ="e��E��69"
    ����(5) ="f��F��70"
    ����(6) ="g��G��71"
    ����(7) ="h��H��72"
    ����(8) ="i��I��73"
    ����(9) ="j��J��74"
    ����(10)="k��K��75"
    ����(11)="l��L��76"
    ����(12)="m��M��77"
    ����(13)="n��N��78"
    ����(14)="o��O��79"
    ����(15)="p��P��80"
    ����(16)="q��Q��81"
    ����(17)="r��R��82"
    ����(18)="s��S��83"
    ����(19)="t��T��84"
    ����(20)="u��U��85"
    ����(21)="v��V��86"
    ����(22)="w��W��87"
    ����(23)="x��X��88"
    ����(24)="y��Y��89"
    ����(25)="z��Z��90"
    ����(26)="`��~��192"
    ����(27)="1��!��49"
    ����(28)="2��@��50"
    ����(29)="3��#��51"
    ����(30)="4��$��52"
    ����(31)="5��%��53"
    ����(32)="6��^��54"
    ����(33)="7��&��55"
    ����(34)="8��*��56"
    ����(35)="9��(��57"
    ����(36)="0��)��48"
    ����(37)="-��_��189"
    ����(38)="=��+��187"
    ����(39)="[��{��219"
    ����(40)="]��}��221"
    ����(41)="\��|��220"
    ����(42)=";��:��186"
    ����(43)="'��""��222"
    ����(44)=",��<��188"
    ����(45)=".��>��190"
    ����(46)="/��?��191"
    //Dim KeyS()
    Dim ����,�ж�,i,m,n
    ����=Len(������)
    ReDim KeyS(����)
    For i=0 to ����-1
        KeyS(i)=Mid(������,i+1,1)
        �ж�=False
        For n=0 to 46
            MyKeyS=Split(����(n),"��")
            If KeyS(i)=MyKeyS(0) Then
                �ж�=True
                 
                dm.KeyPress Clng(MyKeyS(2))
                
                Exit For
            ElseIf KeyS(i)=MyKeyS(1) Then ://��Ҫ��סShift����ģ��
                �ж�=True
                dm.KeyDown 16
                dm.KeyPress Clng(MyKeyS(2))
                dm.KeyUp 16
                Exit For
            End If
        Next
        m = Plugin.Sys.GetTime() + ������ʱ
        Do   
            Delay 5
        loop Until Plugin.Sys.GetTime() >= m
        If �ж�=False Then Exit Sub
    Next
End Sub
