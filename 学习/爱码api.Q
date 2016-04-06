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
MacroID=2d5e14b9-5d0b-45cf-9cd3-491aff0add03
Description=爱码api
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
Dim url

url = "http://api.f02.cn/http.do"

//令牌 = 登陆("fucaao", "19911025")
//
//TracePrint 令牌
//
//num = 获取手机号("7924", 令牌,"fucaao")
//
//Call Plugin.Sys.SetCLB(num)


EndScript 
do
    Key=WaitKey()    
    //脚本运行到这爱行会暂停,当用户按下键盘后继续执行,并且把用户的按键码保存在变量Key里   
    If Key = 13 Then    
        TracePrint "恭喜你按下了回车键"
		Exit Do        
    End If
    Delay 20
Loop

Do
    If 获取验证码("1033", num, 令牌) <> "" Then 
        Exit Do
    End If
    Delay 3000
Loop
EndScript 



Function 登陆(账号, 密码)
    Dim 令牌,arr
    返回值 = Lib.HTTP.post(url,"action=loginIn&uid="&账号&"&pwd="&密码, "UTF-8")
    TracePrint 返回值
    arr = split(返回值, "|")
    If arr(0) = 账号 Then 
        TracePrint "[爱码登陆]正确收到登陆反馈"
        令牌 = arr(1)
        TracePrint "[爱码登陆令牌]:"&令牌
    Else 
        MessageBox "爱码登陆失败!"
        ExitScript
    End If
    登陆 = 令牌
End Function

Function 获取手机号(项目id,令牌,账号)
    Dim num
	
    返回值 = Lib.HTTP.post(url, "action=getMobilenum&pid="&项目id& "&token=" & 令牌&"&uid="&账号, "UTF-8")
	
    TracePrint 返回值
    
    arr = split(返回值, "|")
    If arr(1) = 令牌 Then 
        TracePrint "[爱码获取手机号码]正确"
        num = arr(0)
        TracePrint "[爱码获取手机号码]:"&num
    Else 
        TracePrint "爱码获取手机号码失败!"
        num = ""
    End If
    获取手机号 = num
End Function

Function 获取验证码并不再使用本号(项目id,手机号,令牌,账号)
    Dim 验证码
	
    返回值 = Lib.HTTP.post(url, "action=getVcodeAndReleaseMobile&pid="&项目id& "&token=" & 令牌&"&mobile="&手机号&"&uid="&账号&"&author_uid=365788399", "UTF-8")
	
    TracePrint 返回值
    arr = split(返回值, "|")
    If arr(0) = 手机号 Then 
        TracePrint "[爱码获取验证码]正确"
        验证码 = arr(1)
        TracePrint "[爱码获取验证码]:"&验证码
    Else 
        TracePrint "爱码获取验证码失败!"
        验证码 = ""
    End If
    获取验证码并不再使用本号 = 验证码	
End Function

Sub 手机号加入黑名单(项目id, 手机号, 令牌,账号)
    返回值 = Lib.HTTP.post(url, "action=addIgnoreList&pid="&项目id& "&token=" & 令牌&"&mobile="&手机号&"&uid="&账号, "UTF-8")
	
    TracePrint 返回值
	
    If 返回值 = "1" Then 
        TracePrint "[爱码手机号加入黑名单]正确"
    Else 
        TracePrint "爱码手机号加入黑名单失败!"
    End If
End Sub

Sub 发送短信(项目id,手机号,发送内容,令牌,账号)
    返回值 = Lib.HTTP.post(url, "action=sendSms&pid="&项目id& "&token=" & 令牌&"&mobile="&手机号&"&content="&发送内容&"&uid="&账号, "UTF-8")
	
    TracePrint 返回值
	
    If 返回值 = "succ" Then 
        TracePrint "[爱码发送短信正确"
    Else 
        TracePrint "爱码发送短信失败!"
    End If
End Sub
