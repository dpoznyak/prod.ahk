#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#InstallKeybdHook

ActivateChromeTab(url) {
    if WinExist("ahk_exe Chrome.exe") {
        if not WinActive() {
            WinActivate
;            WinWaitActive
        }
        Saved := Clipboard
        Clipboard := url
        Send, !d
        Send, ^v
        SendEvent, {Tab}{Space}{Esc} 
        Clipboard := Saved
    }
}

#F3::ActivateChromeTab("https://www.mindmeister.com/1025516572")
#F4::ActivateChromeTab("https://kanban.mgenta.biz/b/jJy2B52PXc4npo6rc/dk?focus=me_us")
