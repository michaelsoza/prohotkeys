#SingleInstance, Force

SetCapsLockState, alwaysoff

$colon = ";"

AppsKey & e:: SendInput {Blind}{Up}
AppsKey & d:: Send {Blind}{Down}
AppsKey & s:: Send {Blind}{Left}
AppsKey & f:: Send {Blind}{Right}
AppsKey & w:: Send {Blind}{Home}
AppsKey & r:: Send {Blind}{End}
AppsKey & x:: GoLeftWord()
AppsKey & v:: GoRightWord()
AppsKey & q:: Send {Escape}
AppsKey & a:: DeleteLeftChar()
AppsKey & c:: DeleteRightChar()
AppsKey & 1:: BackTick()
AppsKey & 2:: Tilde()
AppsKey & 3:: Pipe()
AppsKey & 4:: BackSlash()
AppsKey & 9:: Equal()
AppsKey & 0:: SendInput {U+002B}
AppsKey & u:: LeftAngleBrackets()
AppsKey & i:: RightAngleBrackets()
AppsKey & o:: LeftSquareBrackets()
AppsKey & p:: RightSquareBrackets()
AppsKey & j:: LeftCurlyBrackets()
AppsKey & k:: RightCurlyBrackets()
AppsKey & l:: LeftParentheses()
AppsKey & SC027:: RightParentheses()
AppsKey & m:: DoubleQuote()
AppsKey & SC033:: SingleQuote()
AppsKey & SC034:: Hyphen()
AppsKey & SC035:: UnderScore()
AppsKey & b:: DeleteLeftWord()
AppsKey & n:: DeleteRightWord()
AppsKey & g:: NewLine()
AppsKey & F6:: Suspend
return
;------------------------------------
;Single Brackets
;------------------------------------
LeftSquareBrackets(){
    SendInput {U+005B}
}

RightSquareBrackets(){
    SendInput {U+005D}
}

LeftAngleBrackets(){
    SendInput {U+003C}
}

RightAngleBrackets(){
    SendInput {U+003E}
}

LeftCurlyBrackets(){
    SendInput {U+007B}
}

RightCurlyBrackets(){
    SendInput {U+007D}
}

LeftParentheses(){
    SendInput {U+0028}
}

RightParentheses(){
    SendInput {U+0029}
}

DoubleQuote(){
    SendInput {U+0022}
}

SingleQuote(){
    SendInput {U+0027}
}

;------------------------------------
;Movements
;------------------------------------
GoEnd(){
    SendInput {End}
}

GoHome(){
    SendInput {Home}
}

GoUp(){
    SendInput {Up}
}

GoLeft(){
    SendInput {Left}
}

GoDown(){
    SendInput {Down}
}

GoRight(){
    SendInput {Right}
}

GoLeftWord(){
    SendInput ^{Left}
}

GoRightWord(){
    SendInput ^{Right}
}

;------------------------------------
;Selection
;------------------------------------
;Shift Ctrl mov, Seleccion de letras
SelectToHome:
SendInput {Shift down}{Home}{Shift Up}
return
SelectToEnd:
SendInput {Shift down}{End}{Shift Up}
return
SelectRightChar:
SendInput {Shift down}{Right}{Shift Up}
return
SelectDownRow:
SendInput {Shift down}{Down}{Shift Up}
return
SelectLeftChar:
SendInput {Shift down}{Left}{Shift Up}
return
SelectUpRow:
SendInput {Shift down}{Up}{Shift Up}
return
SelectRightWord:
SendInput ^+{Right}
return
SelectLeftWord:
SendInput ^+{Left}
return

;------------------------------------
;Removal
;------------------------------------
DeleteRightWord(){
  sendinput ^+{Right}{Del}
}

DeleteLeftChar(){
  SendInput {BackSpace}
}

DeleteRightChar(){
  SendInput {Delete}
}

DeleteLeftWord()
{
  SendInput ^+{Left}{BackSpace}
}

;NewLines
NewLine()
{
  SendInput {Enter}
}

NewLineDown:
SendInput {End}{Enter}
Return
NewLineUp:
SendInput {Home}{Enter}{Up}
Return
Escape:
SendInput {Escape}
return

;Scroll
ScrollUp:
SendInput {WheelUp}
return
ScrollDown:
SendInput {WheelDown}
return

;------------------------------------
;Symbols
;------------------------------------
Pipe(){
  SendInput {U+007C}
}

Return
Percent:
SendInput {U+0025}
Return
CloseInterrogation:
SendInput {U+003F}
return
At:
SendInput {U+0040}
Return
Dollar:
SendInput {U+0024}
return
UnderScore(){
  SendInput {U+005F}
}
Hyphen(){
  SendInput {U+002D}
}
Ampersand:
SendInput {U+0026}
Return
CloseExclamation:
SendInput {U+0021}
Return
Sharp:
SendInput {U+0023}
Return
OpenInterrogation:
SendInput {U+00BF}
Return
SemiColon:
SendInput {U+003B}
Return
Colon:
SendInput {U+003A}
Return
Equal(){
  SendInput {U+003D}
}
Tilde(){
  SendInput {U+007E}
}

return
Tilde2:
SendInput {U+00B4}
return



;Directorios
Slash:
Send {U+002F}
Return
BackSlash(){
  Send {U+005C}
}

Backtick(){
  SendInput {U+0060}
}

CodeEndLine:
SendInput, {End};
Return

Toggle(){
  Suspend, permit
  Suspend, toggle
}

Autocomplete:
SendInput ^{Space}
return

ContextMenu:
SendInput +{F10}
return

WindowMenu:
SendInput !{Space}
return

Mirror:
pressedHotkey := A_ThisHotkey
SendInput, {%pressedHotkey%}
return

LCtrl & .::
SendInput ^.
Return

NextDesktop:
SendInput ^#{Right}
return

PreviousDesktop:
SendInput ^#{Left}
return

!WheelDown::
Goto NextDesktop
return
!WheelUp::
Goto PreviousDesktop
return

GoLeftTab:
SendInput +^{Tab}
Return
GoRightTab:
SendInput ^{Tab}
Return
