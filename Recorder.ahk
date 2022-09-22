; # Win (Windows logo key) 
; ! Alt 
; ^ Control 
; + Shift 
; &  An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.  

index := 0
MouseX :=
MouseY :=
CoordMode, Mouse, Screen
fille = %A_ScriptDir%\vinyl.txt
;MsgBox, %fille%
;FileDelete %fille%

^!q::
ArrayX := Object()
ArrayY := Object()
MouseGetPos, MouseX, MouseY
FileAppend, %MouseX% , %fille%
FileAppend, `n , %fille%
FileAppend, %MouseY% , %fille%
FileAppend, `n , %fille%

return

^!r::
FileDelete %fille%
return

