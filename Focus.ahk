#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#InstallKeybdHook

CachedTargetWindow := 0

ActivateChromeTab(url) {

    ; b := WinExist ahk_id %CachedTargetWindow%
    ; if not b 
    ; {
        b := WinExist("ahk_exe Chrome.exe")
    ; }

    if b 
    {
        if not WinActive() 
        {
            WinActivate
            WinWaitActive
        }
        Saved := Clipboard
        Clipboard := url
        SendEvent, !d
        SendEvent, ^v
        SendEvent, {Tab}{Space}{Esc} 
        Clipboard := Saved

        ; if CachedTargetWindow == 0 
        ; {
        ;     CachedTargetWindow := WinGet, A
        ;     MsgBox, %CachedTargetWindow%
        ; }
    }
}

+F3::ActivateChromeTab("https://www.mindmeister.com/1025516572")
#F3::ActivateChromeTab("https://www.mindmeister.com/1025516572")
+F4::ActivateChromeTab("https://kanban.mgenta.biz/b/jJy2B52PXc4npo6rc/dk")
#F4::ActivateChromeTab("https://kanban.mgenta.biz/b/jJy2B52PXc4npo6rc/dk")
