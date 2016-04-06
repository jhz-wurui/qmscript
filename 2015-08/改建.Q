[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=49
StopHotkeyMod=2
RunOnce=1
EnableWindow=
MacroID=a0d2e425-e204-4ce4-9ecc-eff5c81bd4a2
Description=改建
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
UEsDBBQAAgAIAJqzBkfhJz9ktwMAAAgmAAAJABEAVUlQYWNrYWdlVVQNAAed38NVnd/DVZ3fw1XtWFtPE0EUPttyaQuWFqFchXJXfNEY34yJRYkkgIYWTUw0qYhCXBayLYqP/hT00RdN9N0fYCI/QR/8C7xB/WZ31k4JhJ2ZLWsTTnOYtnT2mzlzbt9EyZW9n+lfu1/6f9MRuU1ROqzEqUX4zuDqSIoowj8fVioV7+vKuTSUHECb+Bmys26GtkLj0Bg0Ab0AbYO2Q5Pu0VMHNM3nHZ6bsWFliTbxKlOW7pGF0aZ3JCMZeIz3LOOU334/+HijsLdnRIk7FmSZ5ugaqUuMDMPDj5yC643i/2aoQPMaK0hw/AyPHVn8Auy9Rau0SEXawCgrnRRx8NM89/qd18RHL37/Vz2X+srspr2hEX7E5l/XmG+QnujO15Wvn3/80dm/RMjWZb5q3qnmv0hNz+f3zLxcyapOkZ6TqbiGJPJfGy8nfvEjQv57ROtUgqquIKWw/6iAvwTUIr2gB7CDKVl7vfzfzp/pF79JwC8Afwd1X+P8Ddn9NwvnP4Puw4TaiivpUsBvEfZfxc/hHFbotTy+0y93SNi/9cj5r2jan/XnMQn8GLk9vChPERT71HjSGjL+/vE2d8rSQj6bL1qlbH7VXn9ZJ/yJT8+05j9B5rGRf1bxV0VY/u3mMeXX/+KC/88j9uSjrtb/U/x5fvETx8Z/HutYgx3kqmEv4v8isTzsH79NwL+D7n/LqQE21MIa5KpQBvuPk8vL/eK3C/iz2Lull3+k6x/LV7f+7d9E9X2FNTC7Wyr5Xxo/WXP+Rdi/jDUwO+Scc/AqQdU3TpbLCvWnQ8DPOc93488P3jH+Z3RR9d7Nz5yUgK+bP3T7T12Zs7a2y7nNHd35qj18o/OXAjy/7PS+Kt7n5B/p+EsL/vcQ+DtAN9GFq0hSAb+zJv7Z/Y86g0vgBD3svhN+cxb3PxPkP/+zehXj78Pgfyxfxfn7IPjfMMYhif13U6D8z8hinJTAz1Cw/K8fY48Efg+Fy/96yeXgbvxp8z9p/+ujYPnfAMYxCfv3U7D8bwTjoAT+AFX5302dy/cARLd/+AC9C32MrPpeYX7Y9TcaMn4A/E86/gYpWP43znOKX/xLFCz/u0KMB/jHH6Jg+d8UxlEJ/GEKl/9lKVz+N0Ji/1lE/S/RW87DZKVTAX9UwF+gbViA8c95qCXdg7D7T+bPVyXOf0zAD/v+KmzR5b/T39a05g/sFkLd/6Lj9xuIAlP5/kHW/8cF/7sPvDfKtx9u/psmufuPiSP5bwUxWDpD/jsp4LOqYzvIJr99qn/+mxLw/wJQSwECFwsUAAIACACaswZH4Sc/ZLcDAAAIJgAACQAJAAAAAAAAAAAAAIAAAAAAVUlQYWNrYWdlVVQFAAed38NVUEsFBgAAAAABAAEAQAAAAO8DAAAAAA==


[Script]

Call Lib.RC.checkApp(72)

SetSimMode 2

yc = clng(Form1.InputBox1.Text)
While True
    Key=WaitKey()    
    //脚本运行到这一行会暂停,当用户按下键盘后继续执行,并且把用户的按键码保存在变量Key里   
    If Key = 103 Then 
		KeyPress "S", 1
		Delay yc
		KeyPress "S", 1
		Delay yc
		KeyPress "Num 4", 1
    End If
	Delay 10
Wend


//While True
//    last_click=WaitClick()  
//    //脚本运行到这一行会暂停,当用户按下键盘后继续执行,并且把用户的按键码保存在变量Key里   
//    If Key = 32769 Then 
//    End If
//    Delay 10
//Wend
//