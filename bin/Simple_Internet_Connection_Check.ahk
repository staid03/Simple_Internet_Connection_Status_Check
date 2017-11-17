#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance , force

;Version	Date			Author		Notes
;	0.1		17-NOV-2017		Staid03		Initial

;Script Purpose:
;Check internet connection up or down

;set up variables
pingfile = r:\temp\~pingfile.txt			;now using a RAMDisk to store this
											;and reduce the read/writes on my
											;harddrive
site = 8.8.8.8				;Google's DNS
goodpingstring = Reply from 8.8.8.8: bytes=32
notepad = "C:\Program Files\Notepad++\notepad++.exe"
TrayIcon = Internet.ico
gosub , setIcon

main:
{
	sleep , 2000				;padding out timing of script to run smoothly
	gosub , pinger
	gosub , status_checker
}
return

pinger:
{
	run , %comspec% /c  ping -t %site% > %pingfile% ,, hide
}
return

status_checker:
{
	;anum = 1										;troubleshooting
	loop , 500
	{		
		sleep , 2000
		loop , read , %pingfile%
		{
			maxline := a_index			;get the last line number of the file
										;which is where the last ping result is
		}
		filereadline , status , %pingfile% , %maxline%
		ifinstring , status , %goodpingstring%
		{
			Progress, W10 B1 zh0 x10 y10 fs18 CWLime, .
		}
		else
		{
			Progress, W15 B1 zh0 x10 y10 fs18 CWRed, .
		}
		;splashtexton , , , %anum%-%maxline%		;troubleshooting
		;anum++										;troubleshooting
	}
	;splashtextoff									;troubleshooting
	goto , delete_ping_file
}
return

delete_ping_file:
{
	run , %comspec% /c taskkill /F /IM "ping.exe" ,, hide
	sleep , 2000					;padding out timing of script to run smoothly
	run , %A_ScriptFullPath%
}
return

setIcon:
{
	;if you have the TrayIcon file in 
	;the same folder as the script, then
	;it will be shown as the tray icon
	;for this script
	ifexist , %TrayIcon%
	{
		Menu, Tray, Icon, Internet.ico
	}
}
return 