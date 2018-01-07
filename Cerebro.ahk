#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#InstallKeybdHook
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Pause::
SendEvent ^!+P
WinWaitActive, ahk_exe Cerebro.exe, , 0.2
 ;   MsgBox "r =  %ErrorLevel%"
if (!ErrorLevel) {
    
    Send {Space}
    ;MsgBox "sent space"
}
return
