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
MacroID=1656b945-a336-4922-afb3-a9f297e920cf
Description=点时点击断网
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
UEsDBBQAAgAIABJaqEbzzjrMxAQAAAg2AAAJABEAVUlQYWNrYWdlVVQNAAcZm0xVGZtMVRmbTFXtWVtPXFUU/s4MlBnA4VKYUqjttLX3i9gLVG2NTmNjE1qbzqhJjU0Gii1xGMgMVfRdE39Gn33RRKMP/gQTm5j0WRN970PTNxm/fS6dPQTSs/becERZZLFhYJ9vr73X7Ts7jUAe/jrw+4PvRv/AKnkDaaw0s9ihfeaF6ks/kAp/X2k2m9HHzW3ZUvI3tSM8Q3XWndQuapaaoXZTX6D2UHupueDo0UcdoO6kDlKHqHnqMHUXdTd1JHzuyvY2/2vlJhb4tYQC3kaNYx2fQyJ5ekz0LO85//v4g9LdS18/9NL8+c1c8Nl7uIpxmEsGnhfh55+DG4363y6jjCmLFXQzA0b4nQb4Ze73ImZxHRXMc5TKIFK+/QNh7o07ryMco/j8L+u2rC9XFurzFuEHNf8Vi/ke7MR2vq18/+0vf9nYLwjZDZlvmnda+S/V1vPFPbMoV6qqU8E0qoZryDH/9YR9Slz8lJb/3sccGlTTFfQb2J/W8G8StYI7eJf7UBXW3ij/94bPjIvfoeGXib/Mum9x/p7U/k7t/C+z+6hS64YrGTLA36HZ38Iv8hxm8Ikc3++X+wT737Xq/Gcs91/15xkBfgZBD6/LRwyKp9h60pUw/tO199wvS9dKhVKl1iiUZutzH28Q/qFvblvNv8XMU2f+meV3E1H5dziMqbj+l9X8f4qxJ4+6dv/vD58XF797zfgvcR33uA+yajjC+I84cFz8Hg3/LXb/i34NqFNrXIOsCuVpfxYBL4+L36vhX6HtNbv8I65/Kl9dfGZ/ldX3Lteg9r1mkv/F+Lm2869w/5e4BrUPRf8cokrQ8o315ahB/enT8Iv+84P4i4O3hv95Q2i9d4szp1/Dt80ftv2nrUxVpmertvMtGvitzl/K9Pwlv/c18T4//4jjb0DzvxvEXyZ6lV24ieQM8Afb4l+9/zF3gG54XsrPA8E7z7VkM97/HEL8/K/qVdR/J8H/VL6K7hVc8L99HPcK7B+GU/7nFTgeEeDn4Zb/jSJ45x4XfxeS5X/qXiDzLP42n//thlv+N8bxoGD/R+GW/+3nuEeAP4YW//v5z5+e/Pjo0W+m+En3D8ruIvVL6ocG85Ouv+mE8R3wP3H+3wO3/O+lMKfExX8RTvmfn38OC/D3wi3/U/YcEODvQ7L8r4Bk+d9+6PUv2PcGT0GdgXQNIwb4B9rO/z7xFuh9c/jCrP8T4x/U8JN+f5W0XK0t3l8qLizbzjdlEEnzx4D/nLGI/9b994l1/mcz+M+kIP+pehH1n0nwH8XVsuHPLviP8r1xgf2H4Zb/KO+5IMA/Arf85yTHYwL8o0iW/xzT4tYB/xH733HNfls5j2TFlj98RZ2gTvJApg3mpxK235Y/uOC/p0I/iOt/J+CW/57leFqAfxIt/psE/zkFt/xnIozpuPin4fb+63WOrwnwX4Zb/vMqx3MC/HEky39UvU6S/5yBu/z/f+cPtu+/jv9wz2r+2IOy1fwbjLoGvz4L7yGlYsI/z2r+d438t+rfv05Ra+IeVL3/VfnkkiD+z2n4132757kLVeP7V6n95zX8d4j3qfHtb5D/LkJ2/zuxKv/N8Awam3j/N6nhq6pT95Gr4e37xue/Cw7zHwAxvmtJGn9btq78A1BLAQIXCxQAAgAIABJaqEbzzjrMxAQAAAg2AAAJAAkAAAAAAAAAAAAAgAAAAABVSVBhY2thZ2VVVAUABxmbTFVQSwUGAAAAAAEAAQBAAAAA/AQAAAAA


[Script]
间隔 = cint(Form1.InputBox1.Text)*60*1000

GetCursorPos x, y

While True
	MoveTo x, y
	Delay 100
	LeftClick 1
	
	Delay 5000
	
	MoveTo x, y
	Delay 100
	LeftClick 1
	
	Delay 间隔
Wend
