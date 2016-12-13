#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#InstallKeybdHook
SendLevel, 1
#InputLevel, 1


NumpadPgUp::
!NumpadLeft::
Browser_Back::
	SendInput {LWin down}{RCtrl down}{Right}
	Sleep 100
	SendInput {RCtrl up}{LWin up}
	return

NumpadPgDn::
!NumpadRight::
Browser_Forward::
	SendInput {LWin down}{RCtrl down}{Left}
	Sleep 100
	SendInput {RCtrl up}{LWin up}
	return

#InputLevel 0

#e::WinTab()

WinTab() {
	Send {RWin down}{Tab}{RWin up}
	return
}