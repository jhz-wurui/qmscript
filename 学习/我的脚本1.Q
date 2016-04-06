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
MacroID=648689af-f18a-4ded-ba2b-9bc17f5b4c2b
Description= 横版格斗
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
//**************************************************************************
//作者：Jimmyzs
//制作时间：2009-9-4 11：00 ~ 2009-9-5 4：00
//V1.1 1-解决上个版本怪在某些特殊位置出现导致的问题
// 2-修正了判断层位置时的BUG
// 3-加入了平时对技能的支持
// 4-退出时弹起所有按键
//V1.2 1-加入了寻找蓝球加蓝
// 2-加入了对玩家高度高于目标二层时下落一层时行走方向的再次判断
// 3-对层次判断提取为一个子函数
//V1.3 最终版--解决最右边层蓝球的问题。
//**************************************************************************
UserVar HpPer = 50 "使用血瓶的血量百分比"
UserVar MpPer = 30 "寻找蓝球时的百分比"
UserVar UseSkillMpPer = 70 "平时使用技能的蓝量百分比"
//定义变量与初始化
Dim hWnd, ClientRect, Ret(4), HpStep, HpX, HpY, MpX, MpY, UseSkillMpX, UseSkillMpY
Dim GameLeft, GameTop, GameRight, GameButtom
Dim MonX, MonY, PlayerX, PlayerY, BallX, BallY
Dim MonFloor, PlayerFloor, BallFloor, tempHigh, tempFloor
Dim HPColor, MpColor, MonColor, PlayerColor, FloorColor, SideColor, BallColor
Dim AttackMaxDis, MagicDis, AttackedDis, RelativeDis, GameState, FindBallState, MonDir, KeyNum
//MonColor 怪物的特征色--棒子 PlayerColor 人物的特征色--手臂 FloorColor 每层高度的特征色--绿色 MonFloor 怪物所在的高度层 PlayerFloor-玩家所在的高度层
HpColor = "0066FF": MpColor = "FF6600": MonColor = "4C7299": PlayerColor = "0033CC": FloorColor = "0B8648": SideColor = "004E88": BallColor = "D7720E"
MonFloor = 0: PlayerFloor = 0: BallFloor = 0
//GameState --含义 -1 没有发现怪物 0 发现怪物 1 普通攻击 2 魔法攻击
AttackMaxDis = 120: MagicDis = 330: AttackedDis = 104: GameState = -1: FindBallState = -1: MonDir = 1: KeyNum = 39: HpStep = 0.88: MpStep = 0.88
//--------------------------------------------------------------
//获得游戏窗口句柄和位置尺寸等信息以便操作
hWnd = Plugin.Window.mousepoint()
ClientRect = Plugin.Window.GetClientRect(hWnd)
//以下语句判断是否获得的是游戏窗口（游戏窗口尺寸是550x400）
If StrComp(Right(ClientRect, 7), "550|400") <> 0 Then
    Messagebox("请将鼠标放在游戏窗口内启动脚本。")
    EndScript 
End If 
Rect = Split(ClientRect,"|",-1,1)
GameLeft = CInt(Rect(0))
GameTop = CInt(Rect(1))
GameRight = CInt(Rect(0)) + CInt(Rect(2))
GameButtom = CInt(Rect(1)) + CInt(Rect(3))
HpX = GameLeft + 80 + CInt( HpStep * HpPer)
HpY = GameTop + 31
MpX = GameLeft + 80 + CInt( MpStep * MpPer)
MaxMpX = GameLeft + 80 + CInt( MpStep * 90)
MpY = GameTop + 61
UseSkillMpX = GameLeft + 80 + CInt( MpStep * UseSkillMpPer)
UseSkillMpY = GameTop + 61
//系统和窗口初始化完毕------------------------------------------
While True
    Call AddHp
    Call PlayerMove
    Call GetBallInfo
    Call GetMonInfo
    Call GetPlayerInfo
    Call MoveToMon
    Call MoveToBall
    Call AttackMon
Wend 
//左右移动
Sub PlayerMove
    If GameState = -1
        //判断地图边界则是通过地图最下面的二颗树的枝来判断的 //MinDir 行动方向， 1 向右 -1 向左
        Call FindColorEx(GameLeft + 140, GameButtom - 3, GameRight - 140, GameButtom - 1, SideColor, 0, 0.9, SideX, SideY)
        If SideX > 0 Then
            KeyUp KeyNum, 1
            If SideX < GameLeft + 200 Then
                MonDir = 1
            Else 
                MonDir = -1
            End If 
        End If 
        KeyNum = 38 + MonDir
        KeyDown KeyNum, 1
    End If 
End Sub
//得到怪物信息
Sub GetMonInfo
    Call FindColorEx(GameLeft, GameTop + 60, GameRight, GameButtom - 60, MonColor, 0, 0.9, MonX, MonY)
    Delay 2
    If MonY >0 Then
        //得到怪物X中心坐标
        MonX = MonX + 15
        tempHigh = MonY
        Call GetFloor
        MonFloor = tempFloor
    End If 
End Sub
//得到玩家信息
Sub GetPlayerInfo
    Call FindColorEx(GameLeft, GameTop + 60, GameRight, GameButtom - 60, PlayerColor, 0, 0.9, PlayerX, PlayerY)
    Delay 2
    If PlayerY>0 Then
        PlayerDir = 0
        // 默认认为玩家面象为左边，这里通过玩家特征点的坐标加偏移找玩家眼睛来判断面象
        Call FindColorEx(PlayerX + 12, PlayerY - 15, PlayerX + 16, PlayerY - 19, "DFDFDF", 1, 0.8, HeadX, HeadY)
        If HeadX >0 Then
            PlayerDir = 1
        End If 
        tempHigh = PlayerY
        Call GetFloor
        PlayerFloor = tempFloor
    End If 
End Sub
//得到蓝球信息
Sub GetBallInfo
    Call FindColorEx(GameLeft, GameTop + 55, GameRight, GameButtom - 60, BallColor, 0, 0.8, BallX, BallY)
    Delay 1
    If BallY>0 Then
        tempHigh = BallY + 35
        Call GetFloor
        BallFloor = tempFloor
    End If 
    //吃蓝是特殊情况 --因为在最右边，要想吃的话，得从左边上去。中间会导致找不到蓝球。所以强制置X坐标
    If BallFloor = 4 and BallY < 0 Then
        BallX = GameRight
    End If 
End Sub
//得到所在的层数
Sub GetFloor
    If tempHigh > GameTop + 250 Then
        tempFloor = 0
    ElseIf tempHigh > GameTop + 170 Then
        tempFloor = 1
    ElseIf tempHigh > GameTop + 110 Then
        tempFloor = 2
    ElseIf tempHigh > GameTop + 85 Then
        tempFloor = 4
    ElseIf tempHigh > GameTop + 60 Then
        tempFloor = 3.5
    End If 
End Sub
//走向怪物
Sub MoveToMon
    GameState = -1
    If MonX > 0 and PlayerX > 0 Then
        GameState = 0
        FloorDis = MonFloor - PlayerFloor
        //如果玩家高度高于怪物，先移动到怪物的下面
        If FloorDis < 0 and (NearMon = 0 or tempFloorDis <> FloorDis) Then
            tempFloorDis = FloorDis
            NearMon = 1
            Call JudgeMoveDir
            //如果怪物处在第三层，特殊处理
        ElseIf MonFloor = 4 Then
            //说明我已在第一层了
            If FloorDis < 3.5 Then
                If (Abs(MonX - PlayerX) >= MagicDis) Then
                    Call JudegMoveDir
                Else 
                    Call StopMove
                    GameState = 2
                End If 
            Else 
                tempTopDis = -90: tempButtomDis = 0: tempXDis = 65
                //没有在第一层，则找到第一层相对于玩家的位置
                Call JudgeFloorPos
            End If 
            //玩家与怪物的高度小于3格，在最大攻击距离内跳砍就能打到
        ElseIf FloorDis >= 0 and FloorDis <> 3 Then
            //如果玩家和怪的X距离大于最大攻击距离
            If (((Abs(MonX - PlayerX) >= AttackMaxDis) and (FloorDis < 3)) or ((Abs(MonX - PlayerX) >= 20) and (FloorDis > 3))) Then
                Call JudgeMoveDir
            Else 
                Call StopMove
                GameState = 1
            End If 
        End If 
    ElseIf NearMon = 1 Then
        Call StopMove
    End If 
End Sub
//向目标移动
Sub JudgeMoveDir
    KeyUp 39, 1
    KeyUp 37, 1
    If MonX > PlayerX Then
        KeyDown 39, 1
        //置玩家行走方向和当前面向相同
        MonDir = 1
    Else 
        KeyDown 37, 1
        MonDir = -1
    End If 
End Sub
//停止移动
Sub StopMove
    FindBallState = 0
    NearMon = 0
    KeyUp 39, 1
    KeyUp 37, 1
    Delay 30
End Sub
//移动到蓝球
Sub MoveToBall
    //蓝自动回到大于90%时不再找蓝球回蓝
    Call FindColorEx( MaxMpX, MpY, MaxMpX, MpY, MpColor, 0, 0.9, FindBallX, FindBallY)
    If FindBallX > 0 Then
        FindBallState = 0
        BallFloor = 0
    End If 
    If GameState < 0 Then
        //判断是否要找蓝球回蓝
        Call FindColorEx( MpX, MpY, MpX, MpY, MpColor, 0, 0.9, FindBallX, FindBallY)
        If FindBallX < 0 and FindBallState = 0 Then
            FindBallState = 1
        End If 
        If FindBallState <> 0 Then
            Call GetBallInfo
            Call StepToFloor
        End If 
    End If 
End Sub
//得到层与层之间的关系
Sub StepToFloor
    If BallX > 0 and PlayerX > 0 Then
        GameState = -2
        FloorDis = BallFloor - PlayerFloor
        //如果玩家高度高于怪物，先移动到怪物的下面
        If FloorDis < 0 and (FindBallState = 1 or tempFloorDis <> FloorDis) Then
            tempFloorDis = FloorDis
            FindBallState = 2
            Call JudgeMoveBallDir
        ElseIf FloorDis = 0 Then
            Call JudgeMoveBallDir
            //已吃到蓝球，蓝球位置置0
            If Abs(BallX - PlayerX) < 35 Then
                BallFloor = 0
            End If 
        ElseIf FloorDis > 0 Then
            tempLeftDis = 0 : tempRightDis = 0
            //处理找蓝球加蓝时可能会导致的一个问题
            If BallFloor = 1 Then
                If BallX > PlayerX Then
                    tempLeftDis = 250 : tempRightDis = 0
                Else 
                    tempLeftDis = 0 : tempRightDis = -250
                End If 
            End If 
            If PlayerFloor = 3.5 Then
                tempTopDis = 40: tempButtomDis = 60: tempXDis = 150
            Else 
                tempTopDis = -90: tempButtomDis = 0: tempXDis = 65
            End If 
            Call JudgeFloorPos
        End If 
    ElseIf FindBallState = 2 Then
        Call StopMove
    End If 
End Sub
//得到层与层之间的关系
Sub JudgeFloorPos
    //没有在第一层，则找到第一层相对于玩家的位置 从中间左右判断上一层相对于玩家的位置
    Call FindColorEx(GameLeft + tempLeftDis, PlayerY + tempTopDis, PlayerX, PlayerY + tempButtomDis, FloorColor, 2, 0.8, FloorX1, FloorY1)
    Call FindColorEx(PlayerX, PlayerY + tempTopDis, GameRight + tempRightDis, PlayerY + tempButtomDis, FloorColor, 0, 0.8, FloorX2, FloorY2)
    If FloorX1 < 0 and FloorX2 < 0 Then
        KeyDown KeyNum, 1
    ElseIf (FloorX1> 0 and FloorX2 > 0 and (FloorX2 - PlayerX >= PlayerX - FloorX1)) or (FloorX1 > 0 and FloorX2 < 0) Then
        KeyUp 39, 1
        KeyDown 37, 1
        MonDir = -1
    ElseIf (FloorX1> 0 and FloorX2 > 0 and (FloorX2 - PlayerX < PlayerX - FloorX1)) or (FloorX1 < 0 and FloorX2 > 0) Then
        KeyUp 37, 1
        KeyDown 39, 1
        MonDir = 1
    End If 
    If Abs(FloorX1 - PlayerX) < tempXDis or ABS(FloorX2 - PlayerX) < tempXDis Then
        KeyPress 32, 1
        Delay 500
    End If 
End Sub
//向目标移动
Sub JudgeMoveBallDir
    KeyUp 39, 1
    KeyUp 37, 1
    If BallX > PlayerX Then
        KeyDown 39, 1
        //置玩家行走方向和当前面向相同
        //MonDir = 1
    Else 
        KeyDown 37, 1
        //MonDir = -1
    End If 
End Sub
//攻击怪物
Sub AttackMon
    If (GameState > 0) Then
        //玩家和怪物背向则调整面象
        If MonX > PlayerX and PlayerDir = 0 Then
            KeyPress 39, 1
            Delay 30
        ElseIf MonX < PlayerX and PlayerDir = 1 Then
            KeyPress 37, 1
            Delay 30
        End If 
        //相隔不同层时的延时处理
        JumpDelay = 0
        If MonFloor - PlayerFloor > 0 Then
            KeyDown 32, 1
            Delay 200
            If MonFloor - PlayerFloor = 2 or MonFloor - PlayerFloor = 3 Then
                JumpDelay = 250
            ElseIf MonFloor - PlayerFloor = 2.5 Then
                JumpDelay = 275
            End If 
            Delay JumpDelay
            KeyUp 32, 1
        End If 
        If GameState = 1 Then
            //判断平时是否使用技能 限制在相隔一层的范围内效果比较好
            Call FindColorEx( UseSkillMpX, UseSkillMpY, UseSkillMpX, UseSkillMpY, MpColor, 0, 0.9, UseSkillX, UseSkillY)
            If MonFloor - PlayerFloor < 1.5 and UseSkillX > 0 Then
                KeyPress 83, 1
            Else 
                KeyPress 65, 1
            End If 
        Else 
            KeyPress 83, 1
        End If 
        Delay JumpDelay + 200
    End If 
End Sub
//加血
Sub AddHp
    IfColor HpX, HpY, HpColor, 1 Then
        KeyPress 49, 1
        Delay 50
    End If 
End Sub
//防止有按键没有弹起
Sub OnScriptExit
    KeyUp 32, 1
    KeyUp 37, 1
    KeyUp 39, 1
End Sub
