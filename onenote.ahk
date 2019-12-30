#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

#InstallKeybdHook

SetTitleMatchMode 2
SendMode, Event
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
    Send, ^6{Home}+{End}^i^-^+<{End}
return
+F5::
    Reset()
    Send, ^1^1{Home}+{End}^i^+<{End}
return


F3::
    Reset()
    Send, {Home}{U+270F}^1^4
return
F6::
    Reset()
    Send, {Home}{U+2B55}^1^4
return
+F6::
    Reset()
    Send, {Home}{U+2757}^1^4
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
