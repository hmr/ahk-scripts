#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Alt+Win+C -> Calc
#!c::
        Run, calc.exe
Return

; Win+E -> Q-Dir instead of Explorer
#e::
    Run, "C:\Program Files\Q-Dir\Q-Dir.exe"
Return

; Ctl+Win+X -> Dos Prompt
^#x::
    Run, cmd.exe
Return

; Ctl+Win+C -> Cygwin Mintty
^#c::
    Run, C:\cygwin64\bin\mintty.exe -i /Cygwin-Terminal.ico -, C:\cygwin64\home\dg
Return

; Ctrl-Win-R -> RTM
^#r::
    Run C:\Users\dg\AppData\Local\rememberthemilk\Remember The Milk.exe, C:\Users\dg\AppData\Local\rememberthemilk\app-1.1.9
Return

; Ctrl-Win-S -> Slack
^#s::
    if WinExist("Slack - ")
        WinActivate
    Else
        Run C:\Apps\Slack.lnk
Return

; Ctrl-Win-W -> WhatsApp
^#w::
    if WinExist("WhatsApp")
        WinActivate
    Else
        Run C:\Users\dg\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\WhatsApp\WhatsApp.lnk
Return

; Win-Alt-S -> Spotify
#!s::
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
;07B(無変換) -> 半角/全角
sc07B::Send {sc029}
;079(変換) -> 半角/全角
sc079::Send {sc029}
;029 -> かな

; Settings for Gmail
; Add BCC
