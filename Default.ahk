﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Win-A: A5M2
#a::
	if WinExist("ahk_exe A5M2.exe")
		WinActivate
	Else
		Run, "C:\Program Files\a5m2\A5M2.exe", "C:\Program Files\a5m2"
Return


; Win-N: Notepad++
#n::
	if WinExist("ahk_class Notepad++")
		WinActivate
	Else
		Run, "C:\Program Files (x86)\Notepad++\notepad++.exe", "C:\Program Files (x86)\Notepad++"
Return

; Win-V: VSC(Insiders)
#v::
	if WinExist("ahk_exe Code - Insiders.exe")
		WinActivate
	Else
		Run, "C:\Program Files\Microsoft VS Code Insiders\Code - Insiders.exe", "C:\Program Files\Microsoft VS Code Insiders"
Return

; Win-E: Q-Dir instead of Explorer
#e::
	if WinExist("ahk_exe Q-Dir.exe")
		WinActivate
	Else
		Run, "C:\Program Files\Q-Dir\Q-Dir.exe"
Return

; Win-C: Cygwin Mintty
#c::
	if WinExist("ahk_exe mintty.exe")
		WinActivate
	Else
		Run, C:\cygwin64\bin\mintty.exe -i /Cygwin-Terminal.ico -, C:\cygwin64\home\dg
Return

; Win-S: Slack
#s::
    if WinExist("Slack - ")
        WinActivate
    Else
        Run C:\Apps\Slack.lnk
Return

; Win-F: Firefox
#f::
	if WinExist("ahk_class MozillaWindowClass")
		WinActivate
	Else
		Run, "C:\Program Files\Mozilla Firefox\firefox.exe", "C:\Program Files\Mozilla Firefox"
Return

; Ctl-Win-C: 電卓
^#c::
	if WinExist("電卓")
		WinActivate
	Else
        Run, calc.exe
Return

; Ctrl-Win-X: DOS Prompt
^#x::
	if WinExist("ahk_exe cmd.exe")
		WinActivate
	Else
		Run, cmd.exe
Return

; Win-R: RTM
#r::
    Run C:\Users\dg\AppData\Local\rememberthemilk\Remember The Milk.exe, C:\Users\dg\AppData\Local\rememberthemilk\app-1.1.9
Return

; Win-W: WhatsApp
#w::
    if WinExist("WhatsApp")
        WinActivate
    Else
        Run C:\Users\dg\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\WhatsApp\WhatsApp.lnk
Return

; Ctrl-Win-S: Spotify
^#s::
    Run C:\Apps\Spotify.lnk
Return

; Don't switch langueages.
#Space::
Return

; Settings for Spotify(and other media players)
; "ALT + LEFT" for previous 
!Left::Media_Prev
Return
; "ALT + RIGHT" for next 
!Right::Media_Next
Return
; "ALT + UP" for pause
!Up::Media_Play_Pause
Return
; "ALT + Down" for pause
!Down::Media_Play_Pause
Return
; Win-Alt-Up -> Volume Up
#!Up::Volume_Up
; Win-Alt-Down -> Volume Down
#!Down::Volume_Down
; Win-Alt-PgDn -> Mute
#!PgDn::Volume_Mute

; Settings for IME
;半角/全角 -> Nothing
sc029::
return
;07B(無変換) -> 半角/全角
;sc07B::Send {sc029}
;079(変換) -> 半角/全角
sc079::Send {sc029}
;029 -> かな

;EXPERIMENTAL SETTINGS
;Alt-Tab -> Win-Tab
;!Tab::Send, #{Tab}
; Settings for Gmail
; Add BCC
