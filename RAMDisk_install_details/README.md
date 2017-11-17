| Version       | Date          | Author  | Notes |
|:------------- |:-------------:|:-------:|:------|
| 0.1      	| 17-NOV-2017 	| Staid03 |Initial|
| 0.2     	| 17-NOV-2017   | Staid03 |Updated script to delete pingfile after 500 run-throughs and kill<br>the ping process running in the background. Using a RAMDisk<br>to prevent unnecessary disk reading/writing|

<br>
<br>Now started using RAMDisk to store the ping file onto.
<br>
<br>This is totally optional but best to prevent the damage caused
<br>by ongoing hard disk reading/writing, particularly as the streaming 
<br>data is only needed for temporary one-off use.
<br>
<br>I am using R: (R for RAM disk) to port the file to.
<br>
<br>I looked into other solutions that others had provided but
<br>I there were different reasons for continuing with my use-case
<br>- mostly due to it fitting better.
<br>
<br>I decided on the freeware from Radeon AMD found here:
<br>http://www.radeonramdisk.com/software_4.0.php
<br>
<br>It is no longer supported but it will suit me ok.
<br>It is not for commercial use, I believe.
<br>
<br>I will post screenshots of my settings in this github folder.
