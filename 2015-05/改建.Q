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
MacroID=d1387776-f302-4dc8-b248-fed681c57b0f
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
UEsDBBQAAgAIALilsUbzvfJVpgMAAAgmAAAJABEAVUlQYWNrYWdlVVQNAAfo/VhV6P1YVej9WFXtWUtPU0EUPrfl0RbsA6E8xfJSZKV7YyJEAgmgodUFiSYVqhBKIaUa2LkyLv0HhrULNdF/YSKJf0AX/gV2Ur+5d66dIoR7Zi5cm3DI4ZTSud/MeZ9pmBza/5b6sfep7ycdoTsUpsNqlFqU9yzJNiWJQvLvw2q16r5dvaCGot/gJmlDYetmcCs4Co6AY+BL4DZwOzjumJ4S4JRcd3ihxoalRdrET4UydI9KkGXaJQ6l4THus6xTPrv1Znzp3dt9K4zXr6LOew9plm6SPkXIslz80Cm4rlT/N0U5mjPYQUzip2XscPFz0PcWFWiB8rQByaUOCtn4KZl7va5rktKN3/+NL+h8aHqzvGEQfiTW3zJYb5EZma43pc8fv/4yOT8jZM9kvW7eqeW/UF3P59Vmbq4UVSdPT6mouYc48l+b7FO84oeU/PeI1mgbrLuDpMb5wwr+IlDztEL3oYcis/a6+b9dPtMrfpOCnwP+Duq+gf0t7vmbFftPofsogsuaO+nUwG9Rzl/Dn4Qdlmmdj2/3ywmG/luP2H/ZUP+iP48w8CPk9PAqPUZQHFDjUWvA+AfH69wuS/PZTDZf2s5kC+W1Z2eEP/b+idH6JWSeMvJPAb91SOTfLhlTXv0vqvj/HGKPH3X1/p+Uz/OKHzs2/rPYxyr0wKuGPYj/yyTysHf8NgX/Lrr/LbsGlMEl7IFXhdI4f5ScudwrfruCP42zl8zyD7v+iXx1++/5i6i+z7EHofeSTv5n48fr7J+H/ivYg9DDpG0HtxLUfONkGteoPwkFf9J+vhN/XvCO8T+rk2r3bl7WJBV80/xh2n+a0sxmZb2wa7pev4Nv9PklB8+v2L2vjvfZ+YcdfynF/x4AfwfoRXThOhTXwO+oi39x/6Nv/xgs6GL3nvCZ87j/4Zxf1Cv3Xj+I+U/kK7dv82P+uwo5SN7rXxcFO/+lyd/5LwPZzTh/NwU7/6nfF/kw/7H130P+zn/9kCMM/feSv/PfEOQAA7+P/p3/dMm0/g8hG36AfA35XWN90PUzHDC+6fzpx/w3Jn3Kq//1k7/z36iMaa/4A+Tv/DcOeZ2Bf4X8nf+uQQ4z8Acp2PlP1Gt3/puxv31cx6n1mnid/i+jnF/Fn8frFSa+uH8U9pxg6H9IwV+wfW8Dti9qz3/c8w8r+EGT6fw58WXVaH3/Xi7Q/QdNwv9fat8+OPnnBvHuH0aO5J9leoEe/Pzmz1EFfxboIgPqoev1n2M+xx8XX6U/UEsBAhcLFAACAAgAuKWxRvO98lWmAwAACCYAAAkACQAAAAAAAAAAAACAAAAAAFVJUGFja2FnZVVUBQAH6P1YVVBLBQYAAAAAAQABAEAAAADeAwAAAAA=


[Script]
//SetSimMode 2
Form1.Hotkey1.Virtualkey = 192
Form1.Hotkey1.Register True

While True
    Key=WaitKey()    
    //脚本运行到这一行会暂停,当用户按下键盘后继续执行,并且把用户的按键码保存在变量Key里   
    If Key = 112 Then 
    	TracePrint "按下f1"
        Call Lib.键盘.键盘组合键("Ctrl+Win+Tab",0)
    End If
        
    If key = 113 Then 
        KeyDown 17, 1
        KeyPress 82, 1
        KeyUp 17, 1
    End If
    
    
    Delay 10
Wend

Sub OnScriptExit()
     Form1.Hotkey1.Register False
End Sub

Event Form1.Hotkey1.Hotkey   
	KeyPress "BackSpace", 1
    KeyPress "/", 1
End Event
