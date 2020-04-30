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
    Send, ^6{Home}+{End}^{i}^-^+{sc33}{End}
return
+F5::
    Reset()
    Send, ^1^1{Home}+{End}^i^+{sc33}{End}
return


F3::
    Reset()
    Send, ^1^4{Home}{U+270F}
return
F6::
F12::
    Reset()
    Send, ^1^4{Home}{U+2B55}
return
+F6::
+F12::
    Reset()
    Send, ^1^4{Home}{U+2757}
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

^Tab::
    ; ignore control tab instead of creating new section in mistake
return
