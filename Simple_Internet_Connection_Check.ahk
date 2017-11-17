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
pingerfile = ~pingerfile.txt
site = 8.8.8.8				;Google's DNS
goodpingstring = Reply from 8.8.8.8: bytes=32
notepad = "C:\Program Files\Notepad++\notepad++.exe"

main:
{
	gosub , pinger
	gosub , status_checker
}
return

pinger:
{
	run , %comspec% /c ping -t %site% > %pingerfile% , hide
}
return

status_checker:
{
	loop
	{		
		sleep , 2000
		loop , read , %pingerfile%
		{
			maxline := a_index			;get the last line number of the file
										;which is where the last ping result is
		}
		filereadline , status , %pingerfile% , %maxline%
		filedelete , %pingerfile%		;this doesn't seem to actually work because 
										;the file is locked by the ping process but 
										;I want to work around it later (stop the
										;ping processs, delete the file, restart from
										;main. But for now this is working well.
										;My connection here was dropping out for
										;over an hour. It seems to have resolved
										;for now, but I'll keep this running and
										;see how useful it is.
		ifinstring , status , %goodpingstring%
		{
			Progress, W10 B1 zh0 x10 y10 fs18 CWGreen, Y
		}
		else
		{
			Progress, W10 B1 zh0 x10 y10 fs18 CWRed, N
		}
	}
}
return 