#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#InstallKeybdHook

SetTitleMatchMode 2
SendMode, Input
Reset() {
    Send, ^0^+n
}

#IfWinActive OneNote ahk_class ApplicationFrameWindow
F1::Reset()
F4::
    Reset()
    Send, ^1^4
return
F5::Send, ^4
+F4::
    Reset()
    Send, ^6{End}^a^i^-^+<{End}
return
+F5::
    Reset()
    Send, ^1^1{End}^a^i^+<{End}
return
^p::
    Send, ^e
    Send, {Blind}{ctrl UP}
    Sleep, 300
    Send, {tab}{Down}{down}+{tab}
return
^+e::
    Send, ^+g
    ;Sleep, 300
    ;SendEvent, {tab}{tab}
return
