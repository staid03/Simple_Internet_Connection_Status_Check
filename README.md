| Version       | Date          | Author  | Notes |
|:------------- |:-------------:|:-------:|:------|
| 0.1      	| 17-NOV-2017 	| Staid03 |Initial|
| 0.2     	| 17-NOV-2017   | Staid03 |Updated script to delete pingfile after 500 run-throughs and kill<br>the ping process running in the background. Using a RAMDisk<br>to prevent unnecessary disk reading/writing|

Script Purpose:
Check internet connection up or down

Screenshot shows the size of the box showing red or green depending
on the status of the connection

Now started using RAMDisk to store the ping file onto.

I am using R: (R for RAM disk) to port the file to.
I thought about how much disk writing/rewriting this must
be doing and writing and rewriting to RAM is the best solution.

I looked into other solutions that others had provided but
I continued with this one as it fit my requirements well.

I decided on the freeware from Radeon AMD found here:
http://www.radeonramdisk.com/software_4.0.php

The Radeon AMD RAMDisk is no longer supported but it will suit me ok.
It is not for commercial use, I believe.
