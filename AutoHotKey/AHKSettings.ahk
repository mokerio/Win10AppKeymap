#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Activate(t)
{
    ; ifWinActive, %t%
    SetTitleMatchMode, RegEx
    ifWinActive, .*%t%
    {
        WinMinimize
        return
    }
    SetTitleMatchMode 2
    DetectHiddenWindows, on
    ifWinExist, %t%
    {
        WinActivate
        WinMaximize
        return 1
    }
    return 0
}

ActivateByHotKey(t, key)
{
    ; ifWinActive, %t%
    SetTitleMatchMode, RegEx
    ifWinActive, .*%t% 
    {
        WinMinimize
        return
    }
    SetTitleMatchMode 2
    DetectHiddenWindows, on
    ifWinExist, %t%
    {
        Send, %key%
        WinActivate
        WinMaximize
        return 1
    }
    return 0
}

; t: name, p: path
ActivateAndOpen(t,p)
{
    if Activate(t)==0
    {
        Run %p%
        WinWait, %p%, , 3
        WinActivate
        WinMaximize
    Send, #t
    }
    return
}

ActivateAndOpenByHotKey(t, key)
{
    if ActivateByHotKey(t, key)==0
    {
        Send, %key%
        WinWait, %p%, , 3
        WinActivate
        WinMaximize
    Send, #t
    }
    return
}

; 在打开 ScrollLock 时,双击右侧小键盘 1，切换为 Chrome
~Numpad1::
if (A_PriorHotkey <> "~Numpad1" or A_TimeSincePriorHotkey > 400)
{
    KeyWait, Numpad1
    return
}
if (GetKeyState("ScrollLock" ,"T")){
    ; 在打开 ScrollLock 时, 才响应双击后的动作：切换对应的应用程序
    ActivateAndOpen("Chrome", "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe")
}
return

~Numpad2::
if (A_PriorHotkey <> "~Numpad2" or A_TimeSincePriorHotkey > 400)
{
    KeyWait, Numpad2
    return
}
if (GetKeyState("ScrollLock" ,"T")){
    ; 在打开 ScrollLock 时, 才响应双击后的动作：切换对应的应用程序
    ActivateAndOpen("IDEA", "C:\Program Files\JetBrains\IntelliJ IDEA 2018.1.1\bin\idea64.exe")
}
return

~Numpad3::
if (A_PriorHotkey <> "~Numpad3" or A_TimeSincePriorHotkey > 400)
{
    KeyWait, Numpad3
    return
}
if (GetKeyState("ScrollLock" ,"T")){
    ; 在打开 ScrollLock 时, 才响应双击后的动作：切换对应的应用程序
    ActivateAndOpen("Story-writer", "C:\Program Files\Story\Story-writer.exe")
}
return

~Numpad4::
if (A_PriorHotkey <> "~Numpad4" or A_TimeSincePriorHotkey > 400)
{
    KeyWait, Numpad4
    return
}
if (GetKeyState("ScrollLock" ,"T")){
    ; 在打开 ScrollLock 时, 才响应双击后的动作：切换对应的应用程序
    ActivateAndOpen("Code", "C:\Program Files\Microsoft VS Code\Code.exe")
}
return

~Numpad5::
if (A_PriorHotkey <> "~Numpad5" or A_TimeSincePriorHotkey > 400)
{
    KeyWait, Numpad5
    return
}
if (GetKeyState("ScrollLock" ,"T")){
    ; 在打开 ScrollLock 时, 才响应双击后的动作：切换对应的应用程序
    ActivateAndOpen("plsql", "C:\Program Files\PLSQL Developer 12\plsqldev.exe")
}
return

~Numpad6::
if (A_PriorHotkey <> "~Numpad6" or A_TimeSincePriorHotkey > 400)
{
    KeyWait, Numpad6
    return
}
if (GetKeyState("ScrollLock" ,"T")){
    ; 在打开 ScrollLock 时, 才响应双击后的动作：切换对应的应用程序
    ActivateAndOpen("Xmind", "C:\Program Files\XMind ZEN\XMind ZEN.exe")
}
return

~1::
if (A_PriorHotkey <> "~1" or A_TimeSincePriorHotkey > 400)
{
    KeyWait, 1
    return
}
if (GetKeyState("ScrollLock" ,"T")){
    ; 在打开 ScrollLock 时, 才响应双击后的动作：切换对应的应用程序
    ActivateAndOpen("Chrome", "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe")
}
return

~2::
if (A_PriorHotkey <> "~2" or A_TimeSincePriorHotkey > 400)
{
    KeyWait, 2
    return
}
if (GetKeyState("ScrollLock" ,"T")){
    ; 在打开 ScrollLock 时, 才响应双击后的动作：切换对应的应用程序
    ActivateAndOpen("IDEA", "C:\Program Files\JetBrains\IntelliJ IDEA 2018.1.1\bin\idea64.exe")
}
return

~3::
if (A_PriorHotkey <> "~3" or A_TimeSincePriorHotkey > 400)
{
    KeyWait, 3
    return
}
if (GetKeyState("ScrollLock" ,"T")){
    ; 在打开 ScrollLock 时, 才响应双击后的动作：切换对应的应用程序
    ActivateAndOpen("Story-writer", "C:\Program Files\Story\Story-writer.exe")
}
return

~4::
if (A_PriorHotkey <> "~4" or A_TimeSincePriorHotkey > 400)
{
    KeyWait, 4
    return
}
if (GetKeyState("ScrollLock" ,"T")){
    ; 在打开 ScrollLock 时, 才响应双击后的动作：切换对应的应用程序
    ActivateAndOpen("Code", "C:\Program Files\Microsoft VS Code\Code.exe")
}
return

~5::
if (A_PriorHotkey <> "~5" or A_TimeSincePriorHotkey > 400)
{
    KeyWait, 5
    return
}
if (GetKeyState("ScrollLock" ,"T")){
    ; 在打开 ScrollLock 时, 才响应双击后的动作：切换对应的应用程序
    ActivateAndOpen("plsql", "C:\Program Files\PLSQL Developer 12\plsqldev.exe")
}
return

~6::
if (A_PriorHotkey <> "~6" or A_TimeSincePriorHotkey > 400)
{
    KeyWait, 6
    return
}
if (GetKeyState("ScrollLock" ,"T")){
    ; 在打开 ScrollLock 时, 才响应双击后的动作：切换对应的应用程序
    ActivateAndOpen("Xmind", "C:\Program Files\XMind ZEN\XMind ZEN.exe")
}
return

~Esc::
if (A_PriorHotkey <> "~Esc" or A_TimeSincePriorHotkey > 400)
{
    KeyWait, Esc
    return
}
WinMinimize, A
return

~^c::
if (A_PriorHotkey <> "~^c" or A_TimeSincePriorHotkey > 400)
{
    KeyWait, c
    return
}
Send, ^c
sleep,200
clipboard=%clipboard% ;%null%
tooltip,%clipboard%
sleep,500
tooltip,
return

-- Ctrl + Shift + Alt + Win + * 复杂按键作用 同时用 CapsLock + * 代替 --

; 打开 Listary CapsLock + s 也即：Ctrl + Shift + Alt + Win + s
CapsLock & s::Send, ^+!#s
return

; 暂停/启动 Wgestures CapsLock + q 也即：Ctrl + Shift + Alt + Win + q
CapsLock & q::Send, ^+!#q
return

; 常用网站
; Google  CapsLock + g
CapsLock & g::run, https://www.google.com/ncr
return
; Github  CapsLock + h
CapsLock & h::run, https://github.com/
return
; Baidu  CapsLock + b
CapsLock & b::run, https://www.baidu.com/
return
; WeiXin  CapsLock + w
CapsLock & w::run, https://wx.qq.com/
return

; 常用闲暇时访问网站
; Baidu News  F9 + n
F9 & n::run, http://news.baidu.com/
return
; 异次元  F9 + i
F9 & i::run, https://www.iplaysoft.com/
return
; 小众软件  F9 + a
F9 & a::run, https://www.appinn.com/
return
; 爱范儿  F9 + f
F9 & f::run, https://ifanr.com/
return
; D 站  F9 + d
F9 & d::run, http://dilidili.com/
return
; B 站  F9 + b
F9 & b::run, https://www.bilibili.com/
return

; 常用语 空白符后 直接输出
::/con::console.log();
return

; vim 辅助; 用在有 vim 支持的应用中
; 打开 vim 控件
CapsLock & 1::Send, ^!+1
return

CapsLock & n::
SetTitleMatchMode, RegEx
ifWinActive, .*IDEA
{
    Send, {Esc}
    Send, g
    Send, t
}

SetTitleMatchMode, RegEx
ifWinActive, .*Code
{
    Send, {Esc}
    Send, g
    Send, t
}
return

CapsLock & r::
SetTitleMatchMode, RegEx
ifWinActive, .*IDEA
{
    ; Alt + Shift + d后， IDEA会默认选择向上一次启动的项目
    Send, !+d
    Sleep, 120
    Send, {Right}
    Sleep, 120
    Loop, 3 {
        Send, {Up}
        Sleep, 120
    }
    Send, {Enter}
}
return

CapsLock & p::
SetTitleMatchMode, RegEx
ifWinActive, .*IDEA
{
    Send, {Esc}
    Send, g
    Send, T
}

SetTitleMatchMode, RegEx
ifWinActive, .*Code
{
    Send, {Esc}
    Send, g
    Send, T
}
return

; TEST
CapsLock & u::
SetTitleMatchMode, RegEx
ifWinActive, .*IDEA
{
    WinGetTitle, Title, A
    MsgBox, The active window is "%Title%".
}
return
