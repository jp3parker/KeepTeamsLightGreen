
Dim loops
Set wshShell = wscript.CreateObject("WScript.Shell")

loops = 30

If (WshShell.AppActivate("Untitled - Notepad") = False) Then
	wshShell.Popup("Cannot run. You need to open an untitled notepad window first.")
End If

' This loop will run until the Notepad window is closed 
' or (loops * (4 minutes + 45 seconds)) has elapsed; whichever is first

Do While (loops > 0 And WshShell.AppActivate("Untitled - Notepad"))
	wshShell.sendkeys "blah{enter}"
	loops = loops - 1
	WScript.Sleep 285000 ' Sleep for 4 minutes and 45 seconds
Loop