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
MacroID=f07ec344-c4dd-4af8-bb62-5319b2c53004
Description=认证测试
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
UEsDBBQAAgAIAOxrnUbqsT2F1QQAAAg2AAAJABEAVUlQYWNrYWdlVVQNAAcq3UBVKt1AVSrdQFXtWktvW0UU/q6dh/PAeZC4aVKK+0ihaUvSNH3waAWuWrVSWlBjEEICyYRAKxwncpwSdoh/UlihbgABC1jwByroji1d8Be6I+ab+6gnwVHvmZn4YpRTnY7rZO43c+Y85ju3aQTy8PehP+99N/4I2+QS0tis96BL+84L1ZdBIBX+e7Ner0df1/ekreRvakd4huqsO6nd1B5qhtpLfYbaR+2nZoOjxwB1iPosdZg6Qs1RR6n7qPupY+FzN/fM/J+VW1jhnxryuIIKxyo+h0Ry9JjoWd5TfveLu+/+fPHLh16an1/PBt+9jeuYgblk4HkRfu4puNGo/+wyipi3WEEvM2CE32mAX6S9V7GEmyhhmaNUhpHy9z8U5t648zrCMYrP/7Puyc5ydaW6bBF+UPNPW8z3YCe2823lh28f/GWzf0HI7sp807zTyH+pLXe+uGcW5UpVdUr4EGXDNWSZ//rCe0pc/JSW/97BHaxRTVcwaLD/tIZ/i6glfIQ3aYeysPZG+b8/fGZc/A4Nv0j8DdZ9i/P3pPvv1M7/Mm8fZWrVcCUjBvhd2v4b+AWewyI+leP79+UBgf27t53/oqX91f08I8DPILjD6/I+g+Ix2k+6E8Z/3Nzmflm6sZBfKFXW8gtL1Tsf7xL+5P0PrOa/x8xTZf5Z4t8movLvaBhTcf2vR/P/ecaePOq2+v9g+Ly4+L1N43+B67hNO8iq4RjjP+LAcfH7NPw3ePtf9WtAlVrhGmRVKMf99yDg5XHx+zX8q9x7xS7/iOufylevPdl/mdX3E65B2b1ikv/F+Nkt51+i/Wtcg7JDwT+HqBI0fGNnedGg/gxo+AX/+UH8xcFr4n/eCBp9tzhzBjV82/xhe/+0leuV1fVaYWXDdr7pHb7d+UuRnl/z774m3ufnH3H8DWn+9xbxN4he5i3cRLIG+MNb4l/1f8wZXC88T/GJkwh6ns2kFf2fScTP/6peZcLPSfA/la96ws8u+N/zHA8K9j8Kp/zPy3M8JsDPwS3/G0fQc4+Lvw/J8j/9fZED/if2vzG45X8THI8I7L8fbvnfIY4HBPjj+Df/MxXb+q8y7zfUr5kVfzOYn3T9TCeMb8s/HfA/cfxNwC3/OxrGdFz8A3DL/45D8YD4+M/BLf97geNhAf5BJMv/VL1Okv/lod8/S6z/a/gs5GFSGTbAP6Th38A6LaD45zy1Ir6DqP6n8qcTgvM/rOG3u9jy16kfb1vNn7hXTHT/hfVabaViPv+m7/fLjIKycf9B6v9HNP+7Rry7xt2PIP9NQdb/OLot/y0yBtdayH8nNXxVdao+cjnsPu1+/juG7fx31th/9P//ML3D77SC/0r2r+pl1xP/bz3/VXeF6L2FC/57luMc4uf/49r5B/nDvP/R7v2vP776/pHNfFv+Y1u/fqEB73PMp4AHBvOTeP89Bbf9j3McTwn8/wSS7X+cRDP+0br336fgtv+hssfLAvu/BLf9j/McZwX402j0P1y8/3yV44wAfwZu+e8roU3j4p/W8FNIVtq9f2Ir0z/Z8Y+5X+3mu+h/XETA5+P63yzc9j/OcLwgwD+DZPsfc2j0P5J4/3VW278r/ndJYP9zcMv/pPs/D73/UyW66gAtsQrI1zBuYP8LcNt/keLrknT/Yk+SlX8AUEsBAhcLFAACAAgA7GudRuqxPYXVBAAACDYAAAkACQAAAAAAAAAAAACAAAAAAFVJUGFja2FnZVVUBQAHKt1AVVBLBQYAAAAAAQABAEAAAAANBQAAAAA=


[Script]
返回值 = Lib.RC.check(9)
Call Lib.RC.checkApp(9)

MessageBox "您可以正常使用了!"

Event Form1.Button1.Click	
	regCode = Form1.InputBox1.Text
	
	If Lib.字符串.isEmpty(regCode) Then 
		MessageBox "注册码不可为空"
	Else 
		//此处的appid需要更改!
		Call Lib.RC.activate(regCode, 9)		
	End If	
End Event
