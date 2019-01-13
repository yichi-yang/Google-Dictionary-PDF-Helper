#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

+z::
WinGetActiveStats, winT, winW, winH, winX, winY
ImageSearch, IconX, IconY, 0, 0, winW, winH, *150 google_dict.png
if IconX {
    MouseGetPos , MouseX, MouseY
    Send ^c
    MouseMove, IconX, IconY, 0
    Click
    MouseMove, MouseX, MouseY, 0
    Sleep, 150
    Send ^a+{Enter}
    Send ^v+{Enter}
} else {
    SoundBeep, 1000
}
MouseGetPos , OutputVarX, OutputVarY
Return

;Esc::
;SoundBeep, 2000
;Reload