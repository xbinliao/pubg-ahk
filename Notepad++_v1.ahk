#NoEnv
#SingleInstance force
#MaxThreadsBuffer on
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2
#ifwinactive, PLAYERUNKNOWN'S BATTLEGROUNDS

;NAME YOUR KEYS
NameCK1 := "M16A4", NameCK2 := "M416", NameCK3 := "SCAR-L"
NameCK4 := "AKM", NameCK5 := "Mini14", NameCK6 := "SKS"
NameCK7 := "UMP9", NameCK8 := "Vector" ,NameCK9 := "Groza"

NameK1 := "Ironsight", NameK2 := "Holographic", NameK3 := "2x", NameK4 := "4x"

NoRecoil := true
ADS := true
CrouchJump := true
Switch := 1
LoadoutSwitch := 0
FreeMode := 1

;RecoilData
IniRead, y11, guns.ini, M16A4, Ironsight
IniRead, y21, guns.ini, M16A4, Holo
IniRead, y31, guns.ini, M16A4, 2x
IniRead, y41, guns.ini, M16A4, 4x
IniRead, y12, guns.ini, M416, Ironsight
IniRead, y22, guns.ini, M416, Holo
IniRead, y32, guns.ini, M416, 2x
IniRead, y42, guns.ini, M416, 4x
IniRead, y13, guns.ini, SCAR-L, Ironsight
IniRead, y23, guns.ini, SCAR-L, Holo
IniRead, y33, guns.ini, SCAR-L, 2x
IniRead, y43, guns.ini, SCAR-L, 4x
IniRead, y14, guns.ini, AKM, Ironsight
IniRead, y24, guns.ini, AKM, Holo
IniRead, y34, guns.ini, AKM, 2x
IniRead, y44, guns.ini, AKM, 4x
IniRead, y15, guns.ini, Mini14, Ironsight
IniRead, y25, guns.ini, Mini14, Holo
IniRead, y35, guns.ini, Mini14, 2x
IniRead, y45, guns.ini, Mini14, 4x
IniRead, y16, guns.ini, SKS, Ironsight
IniRead, y26, guns.ini, SKS, Holo
IniRead, y36, guns.ini, SKS, 2x
IniRead, y46, guns.ini, SKS, 4x
IniRead, y17, guns.ini, UMP9, Ironsight
IniRead, y27, guns.ini, UMP9, Holo
IniRead, y37, guns.ini, UMP9, 2x
IniRead, y47, guns.ini, UMP9, 4x
IniRead, y18, guns.ini, Vector, Ironsight
IniRead, y28, guns.ini, Vector, Holo
IniRead, y38, guns.ini, Vector, 2x
IniRead, y48, guns.ini, Vector, 4x
IniRead, y19, guns.ini, Groza, Ironsight
IniRead, y29, guns.ini, Groza, Holo
IniRead, y39, guns.ini, Groza, 2x
IniRead, y49, guns.ini, Groza, 4x

;HOTKEYS
IniRead, NoRecoilButton, keys.ini, Features, NoRecoil
IniRead, ADSButton, keys.ini, Features, ADS
IniRead, CrouchJumpButton, keys.ini, Features, CrouchJump
IniRead, FreeModeButton, keys.ini, Features, FreeMode
IniRead, PrimaryWeapon1, keys.ini, Louadouts, PrimaryWeapon1
IniRead, PrimaryWeapon2, keys.ini, Louadouts, PrimaryWeapon2
IniRead, SideArm, keys.ini, Louadouts, SideArm
IniRead, MeleeWeapon, keys.ini, Louadouts, MeleeWeapon
IniRead, Throwables, keys.ini, Louadouts, Throwables
IniRead, SecThrowables, keys.ini, Louadouts, SecondaryThrowables
IniRead, YRecoilValueAdd, keys.ini, Increments, ValueAdd
IniRead, YRecoilValueSub, keys.ini, Increments, ValueSub
IniRead, ReloadTheKey, keys.ini, Increments, ValueReload

;Main Hotkeys
Hotkey, *%CrouchJumpButton%, CrouchJumpButton
Hotkey, *%NoRecoilButton%, NoRecoilButton
Hotkey, *%ADSButton%, ADSButton
Hotkey, *%FreeModeButton%, FreeModeButton
;LoadoutType Hotkey
Hotkey, *$%PrimaryWeapon1%, PrimaryWeapon1
Hotkey, *$%PrimaryWeapon2%, PrimaryWeapon2
Hotkey, *$%SideArm%, SideArm
Hotkey, *$%MeleeWeapon%, MeleeWeapon
Hotkey, *$%Throwables%, Throwables
Hotkey, *$%SecThrowables%, Throwables
;Increment Hotkey
Hotkey, *%YRecoilValueAdd%, YRecoilValueAdd
Hotkey, *%YRecoilValueSub%, YRecoilValueSub
;Saving Hotkey
Hotkey, *%ReloadTheKey%, ReloadTheKey


IniRead, CK1, keys.ini, WeaponPresets, M16A4
IniRead, CK2, keys.ini, WeaponPresets, M416
IniRead, CK3, keys.ini, WeaponPresets, SCAR
IniRead, CK4, keys.ini, WeaponPresets, AKM
IniRead, CK5, keys.ini, WeaponPresets, Mini14
IniRead, CK6, keys.ini, WeaponPresets, SKS
IniRead, CK7, keys.ini, WeaponPresets, UMP9
IniRead, CK8, keys.ini, WeaponPresets, Vector
IniRead, CK9, keys.ini, WeaponPresets, Groza
IniRead, K1, keys.ini, SightPresets, Ironsight
IniRead, K2, keys.ini, SightPresets, HoloRedDot
IniRead, K3, keys.ini, SightPresets, 2xScope
IniRead, K4, keys.ini, SightPresets, 4xScope

Hotkey, *%CK1%, CK1
Hotkey, *%CK2%, CK2
Hotkey, *%CK3%, CK3
Hotkey, *%CK4%, CK4
Hotkey, *%CK5%, CK5
Hotkey, *%CK6%, CK6
Hotkey, *%CK7%, CK7
Hotkey, *%CK8%, CK8
Hotkey, *%CK9%, CK9
Hotkey, *%K1%, K1
Hotkey, *%K2%, K2
Hotkey, *%K3%, K3
Hotkey, *%K4%, K4

yrr := {"CK1":{"K1":y11,"K2":y21,"K3":y31,"K4":y41}
	   ,"CK2":{"K1":y12,"K2":y22,"K3":y32,"K4":y42}
	   ,"CK3":{"K1":y13,"K2":y23,"K3":y33,"K4":y43}
	   ,"CK4":{"K1":y14,"K2":y24,"K3":y34,"K4":y44}
	   ,"CK5":{"K1":y15,"K2":y25,"K3":y35,"K4":y45}
	   ,"CK6":{"K1":y16,"K2":y26,"K3":y36,"K4":y46}
	   ,"CK7":{"K1":y17,"K2":y27,"K3":y37,"K4":y47}
	   ,"CK8":{"K1":y18,"K2":y28,"K3":y38,"K4":y48}
	   ,"CK9":{"K1":y19,"K2":y29,"K3":y39,"K4":y49}}
	   
nullA := "CK1", nullB := "CK1"
subKeyA := "K1", subKeyB := "K1"

isMouseShown()
{
StructSize := A_PtrSize + 16
VarSetCapacity(InfoStruct, StructSize)
NumPut(StructSize, InfoStruct)
DllCall("GetCursorInfo", UInt, &InfoStruct)
Result := NumGet(InfoStruct, 8)
if Result > 1
Return 1
else
Return 0
}

Loop {
if isMouseShown()
Suspend On
else
Suspend Off
Sleep 1
}

CK1:
CK2:
CK3:
CK4:
CK5:
CK6:
CK7:
CK8:
CK9:
If Switch {
	If NoRecoil {
		nullA := A_ThisLabel
		Tooltip("Choose a sight for [" name%nullA% "]")
	}
} else {
	If NoRecoil {
		nullB := A_ThisLabel
		Tooltip("Choose a sight for [" name%nullB% "]")
	}
} return

K1:
K2:
K3:
K4:
If Switch {
	If NoRecoil {
		subKeyA := A_ThisLabel
		Tooltip("[" name%nullA% "] : [" name%subKeyA% "] = (" yrr[nullA][subKeyA] ")")
	}
} else {
	If NoRecoil {
		subKeyB := A_ThisLabel
		Tooltip("[" name%nullB% "] : [" name%subKeyB% "] = (" yrr[nullB][subKeyB] ")")
	}
} return

YRecoilValueAdd:
If NoRecoil {
	If Switch {
		yrr[nullA][subKeyA] += 1
		Tooltip("[" name%nullA% "] : [" name%subKeyA% "] = (" yrr[nullA][subKeyA] ")")
	} else {
		yrr[nullB][subKeyB] += 1
		Tooltip("[" name%nullB% "] : [" name%subKeyB% "] = (" yrr[nullB][subKeyB] ")")
	}
} return
YRecoilValueSub:
If NoRecoil {
	If Switch {
		if(yrr[nullA][subKeyA] > 1) {
		yrr[nullA][subKeyA] -= 1
		Tooltip("[" name%nullA% "] : [" name%subKeyA% "] = (" yrr[nullA][subKeyA] ")")
		}
	} else {
		if(yrr[nullB][subKeyB] > 1) {
		yrr[nullB][subKeyB] -= 1
		Tooltip("[" name%nullB% "] : [" name%subKeyB% "] = (" yrr[nullB][subKeyB] ")")
		}
	}
} return

PrimaryWeapon1:
SendInput, {%PrimaryWeapon1%}
NoRecoil := 1
return

PrimaryWeapon2:
SendInput, {%PrimaryWeapon2%}
NoRecoil := 0
return

SideArm:
SendInput, {%SideArm%}
NoRecoil := 1
return

MeleeWeapon:
SendInput, {%MeleeWeapon%}
NoRecoil := 0
return

Throwables:
SendInput, {%Throwables%}
NoRecoil := 0
return

;Fast ADS
*RButton::
if ADS {
  SendInput {RButton}
  SendInput {RButton Down}
  KeyWait, RButton
  SendInput {RButton Up}
} else {
  SendInput {RButton Down}
  KeyWait, RButton
  SendInput {RButton Up}
} return

;CrouchJump
*$Space::
If CrouchJump {
  KeyWait, Space, T0.08
  If ErrorLevel {
  SendInput {Space}{C down}
  Sleep 500
  SendInput {C up}
} else {
  SendInput {Space}
}
} else {
  SendInput {Space}
} return

;Fire
#If NoRecoil
~$*LButton::
yA := yrr[nullA][subKeyA]
yB := yrr[nullB][subKeyB]
cnt := 0
If FreeMode {
	while (GetKeyState("LButton","P")) {
		Sleep, 5
		Click
		if NoRecoil {
			if Switch {
				mouseXY(0, yA)
			} else {
				mouseXY(0, yB)
			
			}
		}
	}
}

mouseXY(dx,dy){
DllCall("mouse_event", "UInt", 0x0001, "UInt", dx, "UInt", dy, "UInt", 0, "UPtr", 0)
} return
#IF

NoRecoilButton:
	if NoRecoil {
		NoRecoil := 0
	ToolTip("NoRecoil OFF")
	} else {
		NoRecoil := 1
	ToolTip("NoRecoil ON")
	} return
ADSButton:
    if ADS {
        ADS := 0
        ToolTip("ADS OFF")
    } else {
        ADS := 1
        ToolTip("ADS ON")
    } return
	
CrouchJumpButton:
    if CrouchJump {
        CrouchJump := 0
        ToolTip("CrouchJump OFF")
    } else {
        CrouchJump := 1
        ToolTip("CrouchJump ON")
    } return
	
FreeModeButton:
    if FreeMode {
        FreeMode := 0
        ToolTip("FreeMode ON")
    } else {
        FreeMode := 1
        ToolTip("FreeMode OFF")
    } return

ToolTip(Text) {
activeMonitorInfo(X, Y, Width, Height)
xPos := Width / 2 - 50
yPos := Height / 2 + (Height / 10)
ToolTip, %Text%, xPos, yPos
SetTimer, RemoveToolTip, 2000
return
RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return
}

activeMonitorInfo( ByRef X, ByRef Y, ByRef Width,  ByRef  Height  ) {
CoordMode, Mouse, Screen
MouseGetPos, mouseX , mouseY
SysGet, monCount, MonitorCount
Loop %monCount% {
	SysGet, curMon, Monitor, %a_index%
	if ( mouseX >= curMonLeft and mouseX <= curMonRight and mouseY >= curMonTop and mouseY <= curMonBottom ) {
		X      := curMonTop
		y      := curMonLeft
		Height := curMonBottom - curMonTop
		Width  := curMonRight  - curMonLeft
		return
	}
}
}


F9::
ComObjCreate("SAPI.SpVoice").Speak("exit")
Exitapp
return

;Reload gun data
ReloadTheKey:
IniRead, y11, guns.ini, M16A4, Ironsight
IniRead, y21, guns.ini, M16A4, Holo
IniRead, y31, guns.ini, M16A4, 2x
IniRead, y41, guns.ini, M16A4, 4x
IniRead, y12, guns.ini, M416, Ironsight
IniRead, y22, guns.ini, M416, Holo
IniRead, y32, guns.ini, M416, 2x
IniRead, y42, guns.ini, M416, 4x
IniRead, y13, guns.ini, SCAR-L, Ironsight
IniRead, y23, guns.ini, SCAR-L, Holo
IniRead, y33, guns.ini, SCAR-L, 2x
IniRead, y43, guns.ini, SCAR-L, 4x
IniRead, y14, guns.ini, AKM, Ironsight
IniRead, y24, guns.ini, AKM, Holo
IniRead, y34, guns.ini, AKM, 2x
IniRead, y44, guns.ini, AKM, 4x
IniRead, y15, guns.ini, Mini14, Ironsight
IniRead, y25, guns.ini, Mini14, Holo
IniRead, y35, guns.ini, Mini14, 2x
IniRead, y45, guns.ini, Mini14, 4x
IniRead, y16, guns.ini, SKS, Ironsight
IniRead, y26, guns.ini, SKS, Holo
IniRead, y36, guns.ini, SKS, 2x
IniRead, y46, guns.ini, SKS, 4x
IniRead, y17, guns.ini, UMP9, Ironsight
IniRead, y27, guns.ini, UMP9, Holo
IniRead, y37, guns.ini, UMP9, 2x
IniRead, y47, guns.ini, UMP9, 4x
IniRead, y18, guns.ini, Vector, Ironsight
IniRead, y28, guns.ini, Vector, Holo
IniRead, y38, guns.ini, Vector, 2x
IniRead, y48, guns.ini, Vector, 4x
IniRead, y19, guns.ini, Groza, Ironsight
IniRead, y29, guns.ini, Groza, Holo
IniRead, y39, guns.ini, Groza, 2x
IniRead, y49, guns.ini, Groza, 4x
yrr := {"CK1":{"K1":y11,"K2":y21,"K3":y31,"K4":y41}
	   ,"CK2":{"K1":y12,"K2":y22,"K3":y32,"K4":y42}
	   ,"CK3":{"K1":y13,"K2":y23,"K3":y33,"K4":y43}
	   ,"CK4":{"K1":y14,"K2":y24,"K3":y34,"K4":y44}
	   ,"CK5":{"K1":y15,"K2":y25,"K3":y35,"K4":y45}
	   ,"CK6":{"K1":y16,"K2":y26,"K3":y36,"K4":y46}
	   ,"CK7":{"K1":y17,"K2":y27,"K3":y37,"K4":y47}
	   ,"CK8":{"K1":y18,"K2":y28,"K3":y38,"K4":y48}
	   ,"CK9":{"K1":y19,"K2":y29,"K3":y39,"K4":y49}}
return