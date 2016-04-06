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
MacroID=96e1b18f-22af-41ce-a952-bbeffa2860f6
Description=日志测试
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
UEsDBBQAAgAIABie7UT0H/7hogQAAAg0AAAJABEAVUlQYWNrYWdlVVQNAAec4sJTnOLCU5ziwlPtWktPVEkU/uryapS3DCi+8DXqoCO3Gx+oUaHVxARHQ+MsJplJWmiV0DaTbkzwJ7hz6WoSf8Ikk8xO2UncaKK41oU/QBcuTKQ9dW9dukQYbz3Gsg2HHM7l0lVf1am653x1btcglKdP2l/e/7vnFZbJKdRgsdyIeukeExpIG+CJvxfL5XJ0u7wmVSUfSGvFGjaQrSPla54gXUfaSLqetJm0ibQlXHq0kraTdpJ2kG4g/YG0m7SLdKPoc3HNxd+0jGKafmbQi3MokC3iNlSki3ZM1Bf7wmf7T++5dvevJ6yGrs80h/eu4AL6oS8JMBbht34BN7Ly/9IYw4jBCNZJ+HUa+GPk7z+Rwy/I4iZZVemgKCyvZ9x2tcJGz+j3pGsSX85PF28aPH7g7X2D9gxmYtretTx/Om+ln9+JjL3TaKcbdyrxTz3+MMEzuPCsk8VV5DXH0AKPcX7SILhnnDaeFP9+xSRKpLojaCP8JlR4b5w2NRL+KKFmMYFL5Ie8Yu4V8Z/VI+RqcfFrJfwxwp+lvG+w/kx1/eXzQprYR560qDmSTo39VyfNv4I/TOswjil1/IDPNCr4v37Z+o8b+p9TqYQCfgNCDs/lN9p5Rdp/Ofqt+fwp+z8hzX+EfK/u9U/n3yL6i4vfKOGfJ/yCmf+V58+f1ZNL+4/zT98AnzEez7YhPIetJP/FP13Lu5V9FozxYqY3ky2UejO54uS1VdqPTJZmhqdntfEncldvXTcYf7XzFwvnD7YVavkvytdcXPAPnq9t8g9e6+hUiD/NsMs/Nin6vwV2+Qev/XQrzL8V9vnHFgV8y/xDmf+0wSr/CPrrUph/u4RPrYzix9zcnFF7XnnhdcM7FAhfarQfchw/TfNXK5jPkizFBthhdoQdZcfYoOf3e77v+UnPT3n+gOcfXh1fpeazktjgnz1iDeOOpQNu+ecG2OWfm8UzFRe/E275J1+riH9eIOwcZeCSJn6TBj6PVT+K6wyh58UezNE+UBWd+mc35PjL+XfSwP9h/fcAXe9YLcZ9Y/Vfzlei93rDt2Zmpgv68WM8n8sW9ZtXPX9+9PrhwvzCiweu8E3rhy74N+erNvn3XrK7ED/+9sAq/1ae/2bY5d/7EMbTuPhb4Lb+x8+LCXHtov63DXbrf9vJ7lHw/3bYrf/tJ7tbAb8XFf51j4X5YIFsSgN/GG7FlH+bSvpGbnzKoAA1WTprVIEyzX8W+DfrI7tTYf/tgF3+/ZPY03Hxd8It/+a5KuLflyn3zAYcWI+B65x/dmM5/00ZzJ8t4R9a5TP/M/8N8s9JhfXnsTrKPy74D8/VUf3TBv/h5QFfYf574Zb/7INd/jNIdkBh/vthn/+cUMDn8app6fmzU388roDfJ83f9fnp8aN/3/zz9tl9V2co0/MT509psu/J/qHRPu3Y/zbqzwcRcse4++8A7PLfo2STCvgH4bb++DPs8p9jos+4+Ifglv/wmn/l/feNYAdMaVX/wvdfR0SfcfF9fB7/RykHXqexfI3zZ1LCzxDibe3sr1d/TUn4rs9P1f79vWqXIdp7fOcXAhZc+Cr7fwDy+0dz0fn+M9bwA/kIUEsBAhcLFAACAAgAGJ7tRPQf/uGiBAAACDQAAAkACQAAAAAAAAAAAACAAAAAAFVJUGFja2FnZVVUBQAHnOLCU1BLBQYAAAAAAQABAEAAAADaBAAAAAA=


[Script]


While True
    print "测试日志", 21
    Delay 1000
Wend
Event Form1.LoadOver
		//listbox			   
    Form1.debug.List = "【日志展示区】"
    Form1.debug.TextColor = "FF0000"
    Form1.debug.BackColor = "C0C0C0"
    Form1.debug.Left = 0
    Form1.debug.Top = 25
    Form1.debug.Height = 203
    Form1.debug.Width = 500
    //清空用button
    Form1.clear.Left = 501
    Form1.clear.Top = 25
    Form1.clear.Width = 61
    Form1.clear.Height = 27
    Form1.clear.Caption = "清空日志"
    //是否打印日志checkbox
    Form1.isDebug.Top = 55
    Form1.isDebug.Left = 501
    Form1.isDebug.Width = 98
    Form1.isDebug.Height = 27
    Form1.isDebug.Caption = "勾上打印日志"
End Event 

Event Form1.clear.Click
    Form1.debug.List = "【日志展示区】"
End Event

Sub print(str, line)
    If Form1.isDebug.Value = 1 Then 
        Form1.debug.AddItem time&"	【第"&line&"行】"&str
        If Form1.debug.ListCount >= 15 Then  		
            Form1.debug.ListIndex = Form1.debug.ListCount-1
        End If
    End If
End Sub
