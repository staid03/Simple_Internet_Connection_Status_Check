Version	Date			Author		Notes
0.1		17-NOV-2017		Staid03		Initial
0.2		17-NOV-2017		Staid03		Updated script to delete pingfile
									after 500 run-throughs and kill
									the ping process running in the
									background.
									Using a RAMDisk to prevent unnecessary
									disk reading/writing

Now started using RAMDisk to store the ping file onto.

This is totally optional but best to prevent the damage caused
by ongoing hard disk reading/writing, particularly as the streaming 
data is only needed for temporary one-off use.

I am using R: (R for RAM disk) to port the file to.

I looked into other solutions that others had provided but
I there were different reasons for continuing with my use-case
- mostly due to it fitting better.



I decided on the freeware from Radeon AMD found here:
http://www.radeonramdisk.com/software_4.0.php



It is no longer supported but it will suit me ok.
It is not for commercial use, I believe.

I will post screenshots of my settings in this github folder.