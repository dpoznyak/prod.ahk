#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#InstallKeybdHook

global CachedTargetWindow := 0

ActivateChromeTab(index) 
{
    OutputDebug, % "Activating target window: " . CachedTargetWindow
    WinActivate, ahk_id %CachedTargetWindow%
    Send, ^%index%
}

SaveTargetWindow() 
{
    CachedTargetWindow := WinExist("A")
    OutputDebug, % "Saved target window: " . CachedTargetWindow
    MsgBox, % "Saved target window: " . CachedTargetWindow
}

#F12::SaveTargetWindow()    

#F3::
    SetTitleMatchMode 2
    If WinExist("OneNote ahk_class ApplicationFrameWindow", "OneNote")
        WinActivate
return

#+F3::ActivateChromeTab("1")
#F4::ActivateChromeTab("2")
