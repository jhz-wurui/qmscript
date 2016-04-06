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
MacroID=4c335b29-4436-4134-9fa5-6979cc90ca8f
Description=生成题库
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
UEsDBBQAAgAIAAIIkEZKxWb3zAMAAAgmAAAJABEAVUlQYWNrYWdlVVQNAAehCS9VoQkvVaEJL1XtWUtPU0EUPrfl0RYsLUJ5iuXloyZGN66MiSUSSRAJrS5MNClYhVBaUqpA4sI/4oKNGzea6M6lO42S+Ad04V8g0cTWb+7DThHCPTMXahM+chi4dO43M+c9+MnC9pfot603/d9pF66Rn8qVILVIzwxbTESIfPbv5Uql4jyuHKOh8BvSZOtQ6LoZ0goJQgKQEOQEpA3SDglbqqcOSNSeVz4+xobFHBXwVaI43aA8xiJtEgcxWIzzLuOAz87+6n35Yn3b8OPn50Hr2R2aokukjgAZhsPvO4DXGeW/TVCapjVWELL5Y7bvcPnTOO9VytIMZWgFIxed5DP5o3bsdTuvyR4d//3f5BhHg8lCcUXD/UjMv6wx3yA96M7XxdvXn37o7J/hsocyXzXuVOOfr6bmc6szJ1aKrJOhecopriGM+Ndm1ylu+X1S/LtLS7QGUV1BRGH/fol/DqwZeki3cQ45Zu514n+7/U63/E0Sfxr8G8j7Gvo3uPtvlvQ/geojBykqrqRLgb9F2n+VPwk9LNAyn9+slzsY59+6S/8Lmucv6vMAgz9AVg0v4z6cYocaD6115t/Z+8zNtHQrFU9l8mvxVLa49OiQ+MdfPdCafw+Rp4j4k8V3FYj42237lFv7C0r2Pw3f43tdrf1H7Pe55Q/t6f8prGMR58DLhr3w/5Mk4rB7/jaJ/zqq/1UzBxQheayBl4Vi2H+QrL7cLX+7xD+Jvef14g87/4l4dfXv/nPIvo+xBnHueZX4z+YP1+g/g/MvYQ3iHJKmHpxMULWN/XFOIf90SPxJ8/2W/7nh28P+jC6q3ru5mROR+HXjh279qYtksbC+lk0WNnTnKxbxjd6/pGH5JbP2VbE+M/6w/S8q2d8s+DfAnkMVroKwAn9njf+L+x/1Di4EDTrcfft85ijufzj7F/nKvn7zov8z+cfJff7pIisHC3jR/53GOMTg76b69n8x8rb/i2PsYey/h7zv/84y+OX/F3nV/11g8PeSt/3fAMZRBn8fedv/DWMcZPD307/9nyp08/885Apk2RCxiI96509/nfl1+08v+r8ztk25tb8B8rT/ozHbp93yD5K3/d95En2Ae/5T5G3/J943wuAfIk/7P3b9IfK10//NYtclnLuO/rn8cv6ZRO7PYQUa9s/mj5PVgwukwL2pXP2I9/D5hyX9f/z5dfvzh/flZ4mLiXrEL93+M/FuUWv+wFa6ruuvN2bM2LcCL8wp3z9w7W9Esr+b4HuqfPthxb8E8e4/RnfFvwV6gh7g6PrfMYl/CuwiAquxq91/jUv8fwBQSwECFwsUAAIACAACCJBGSsVm98wDAAAIJgAACQAJAAAAAAAAAAAAAIAAAAAAVUlQYWNrYWdlVVQFAAehCS9VUEsFBgAAAAABAAEAQAAAAAQEAAAAAA==


[Script]
path = Form1.BrowseBox1.Path

TracePrint path

内容arr = Lib.ICEFRAG.文件_readFileToArray(path)

Call Lib.ICEFRAG.文件_createFileExistDel("c:\题库.ini")

For i = 0 To UBound(内容arr) - 1
	data = 内容arr(i)
	TracePrint data
	key = split(data, "----")(0)
	value = split(data, "----")(1)
	
	Call Plugin.File.WriteINI("题库", key, value, "c:\题库.ini")
Next
