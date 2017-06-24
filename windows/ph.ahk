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
AppsKey & t:: Send {Blind}{PgDn}
AppsKey & y:: Send {Blind}{PgUp}
AppsKey & F6:: Suspend
Space & a::BackTick()
Space & s::Tilde()
Space & d::BackSlash()
Space & f::Pipe()
Space & j::DoubleQuote()
Space & k::SingleQuote()
Space & l::Hyphen()
Space & SC027::UnderScore()
Space::Mirror()

Space & z::CloseExclamation()
Space & x::At()
Space & c::Sharp()
Space & v::Dollar()
Space & b::Percent()
Space & n::Pow()
Space & m::Ampersand()
Space & SC033::Multiply()
Space & SC034::Plus()
Space & SC035::Equal()

Space & q:: Send 1
Space & w:: Send 2
Space & e:: Send 3
Space & r:: Send 4
Space & t:: Send 5
Space & y:: Send 6
Space & u:: Send 7
Space & i:: Send 8
Space & o:: Send 9
Space & p:: Send 0

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
Percent(){
SendInput {U+0025}
}
CloseInterrogation:
SendInput {U+003F}
return
At(){
SendInput {U+0040}
}
Dollar(){
SendInput {U+0024}
}
UnderScore(){
  SendInput {U+005F}
}
Hyphen(){
  SendInput {U+002D}
}
Ampersand(){
SendInput {U+0026}
}
CloseExclamation(){
SendInput {U+0021}
}
Sharp(){
SendInput {U+0023}
}
OpenInterrogation:
SendInput {U+00BF}
Return
SemiColon:
SendInput {U+003B}
Return
Colon:
SendInput {U+003A}
Return
Tilde(){
  SendInput {U+007E}
}
Pow(){
  SendInput {U+005E}
  
}
Multiply(){
  SendInput {U+2217}
}
Equal(){
  SendInput {U+003D}
}
Plus(){
  SendInput {U+002B}
}

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

Mirror(){
pressedHotkey := A_ThisHotkey
SendInput, {%pressedHotkey%}
}
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
