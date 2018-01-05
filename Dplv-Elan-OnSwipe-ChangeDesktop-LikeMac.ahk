#NoEnv
#UseHook
SendMode Input
SetWorkingDir %A_ScriptDir%
#InstallKeybdHook
SendLevel, 1
#InputLevel, 1

NumpadPgUp::
NumpadLeft::
!NumpadLeft UP::
Browser_Back::
	SetTimer, SwipeRight,-50
	return

SwipeRight:
;	SendInput {LWin down}{RCtrl down}{Right}{LWin up}{RCtrl up}
    SendInput {LWin down}{RCtrl down}{Right}
    Sleep 150
    SendInput {RCtrl up}{LWin up}
	return

NumpadPgDn::
NumpadRight::
!NumpadRight UP::
Browser_Forward::
	SetTimer, SwipeLeft,-50
	return

SwipeLeft:
;	SendInput {LWin down}{RCtrl down}{Left}{LWin up}{RCtrl up}
    SendInput {LWin down}{RCtrl down}{Left}
    Sleep 150
    SendInput {RCtrl up}{LWin up}
	return

#InputLevel 0

#f::WinTab()
#e::WinTab()

WinTab() {
;	SendInput {LWin down}{Tab}
;    Sleep 150	
;	SendInput {LWin up}
	RunWait, TaskView\TaskView.exe
	return
}