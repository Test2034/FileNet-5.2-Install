@echo off

rem Licensed Materials - Property of IBM
rem 5725A15, 5724R81
rem (c) Copyright IBM Corp. 2010, 2011  All Rights Reserved.
rem US Government Users Restricted Rights - Use, duplication or disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
rem
rem parameter 1 = installerScriptFolder - Script folder
rem parameter 2 = decompressedFolder    - Destination folder to decompress files to
rem parameter 3 = p8DownloadFolder      - Source folder of the IBM software packages
rem parameter 4 = 32 or 64              - Bitness of the OS 64 or 32 (optional)

echo ====================
echo Begin deployXT.bat
time /t

set ScriptsDir=%1
set DirToDecompressTo=%2
set P8DownloadDirectory=%3

set ScriptsDir=%ScriptsDir:~1,-1%
set P8DownloadDirectory=%P8DownloadDirectory:~1,-1%
set DirToDecompressTo=%DirToDecompressTo:~1,-1%

call "%ScriptsDir%\setDirs.bat"

pushd "C:\Program Files\IBM\FileNet\WebClient\deploy"

call "create_web_client_war.bat"

call "create_web_client_ear.bat"


pushd "%ScriptsDir%"

call "C:\Program Files\IBM\WebSphere\AppServer\profiles\AppSrv01\bin\wsadmin.bat" -conntype SOAP -port 8880 -user P8Admin -password IBMFileNetP8 -profileName AppSrv01 -lang jacl -f deployXT.tcl

popd
 
time /t
echo End deployXT.bat
echo ====================
