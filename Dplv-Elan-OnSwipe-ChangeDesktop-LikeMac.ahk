#NoEnv
#UseHook
SendMode Input
SetWorkingDir %A_ScriptDir%
#InstallKeybdHook
SendLevel, 1
#InputLevel, 1

UnignoreGarbage()

!NumpadLeft::
!NumpadRight::
return

NumpadPgUp::
NumpadLeft::
!NumpadLeft UP::
Browser_Back::
	IgnoreGarbage()
	SendInput {LWin down}{RCtrl down}{Right}
	SendInput {RCtrl up}{LWin up}
;	Sleep 1000
	UnignoreGarbage()
	return

NumpadPgDn::
NumpadRight::
!NumpadRight UP::
Browser_Forward::
	IgnoreGarbage()
	SendInput {LWin down}{RCtrl down}{Left}
	SendInput {RCtrl up}{LWin up}
;	Sleep 1000	
	UnignoreGarbage()
	return

#InputLevel 0

#e::WinTab()

WinTab() {
	Send {RWin down}{Tab}{RWin up}
	return
}

IgnoreGarbage() {
	;Hotkey, LControl, on
	;Hotkey, LControl up, on
}

UnignoreGarbage() {
	;Hotkey, LControl, off
	;Hotkey, LControl up, off
}
;LControl::
;LControl up::
; return