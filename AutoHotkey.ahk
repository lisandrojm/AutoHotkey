#NoEnv
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2
#UseHook
#SingleInstance Force
#Persistent
SetKeyDelay, -1, 50
SetWinDelay, -1
SendMode Input
SetStoreCapslockMode, Off


; Modificadores
; ^ Ctrl
; ! Alt
; + Shift
; # Win
; < Left
; > Right


; Remapeo de CapsLock a ESC
Capslock::Send {Esc}

; Remapeo de CapsLock + h a flecha izquierda
Capslock & h::Send {Left}

; Remapeo de CapsLock + l a flecha derecha
Capslock & l::Send {Right}

; Remapeo de CapsLock + k a flecha arriba
Capslock & k::Send {Up}

; Remapeo de CapsLock + j a flecha abajo
Capslock & j::Send {Down}

; Remapeo de CapsLock + Ctrl + h a BACKSPACE
^h::Send {Backspace}

; Remapeo de CapsLock + Ctrl + l a DELETE
^l::Send {Delete}

; Asignar "Ctrl + ;" a la letra "ñ" con codificación UTF-8
^;::
  SendInput, {U+00F1}
Return

; Asignar "Ctrl + Shift + ;" a la letra "Ñ" con codificación UTF-8
^+;::
  SendInput, {U+00D1}
Return

; Vocales minusculas 
!a::SendInput, {U+00E1}    ; Alt+a = á
!e::SendInput, {U+00E9}    ; Alt+e = é
!i::SendInput, {U+00ED}    ; Alt+i = í
!o::SendInput, {U+00F3}    ; Alt+o = ó
!u::SendInput, {U+00FA}    ; Alt+u = ú

; Vocales mayúsculas
!+a::SendInput, {U+00C1}    ; Alt+Shift+a = Á
!+e::SendInput, {U+00C9}    ; Alt+Shift+e = É
!+i::SendInput, {U+00CD}    ; Alt+Shift+i = Í
!+o::SendInput, {U+00D3}    ; Alt+Shift+o = Ó
!+u::SendInput, {U+00DA}    ; Alt+Shift+u = Ú