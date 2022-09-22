; # Win (Windows logo key) 
; ! Alt 
; ^ Control 
; + Shift 
; &  An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.  

fille = C:\Users\Angeluta\Desktop\Projects\AutoHotKey\DragonCity\a.txt
index := 
m :=
MouseX :=
MouseY :=
dellay :=500
ok :=1

CoordMode, Mouse, Screen





^!a::

Loop, 10
{
index := 0
Loop, Read, %fille%
{if(ok==1)
{
	index += 1
	m := mod(index,2)
	
	if(m==1)
	MouseX = %A_LoopReadLine%
	
	if(m==0)
	{
	MouseY = %A_LoopReadLine%
	;MsgBox, X=%MouseX%, Y=%MouseY%, m=%m%, L=%A_LoopReadLine%
	MouseMove, %MouseX%, %MouseY%
	MouseClick
	Sleep, %dellay%
	}
	
	
	
	if(index==4)
	{
	Sleep, 500
	}
	
	;MsgBox, m=%m%
	;MsgBox, %A_LoopReadLine%
}
}
}

return

^!z::
if(ok==1)
ok := 0

else
ok := 1



return