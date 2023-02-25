@ECHO off && set "rootFolder=%~dp0" && SETLOCAL ENABLEDELAYEDEXPANSION
echo %*
(set /p "packageName=")
RD /S /Q "%~dp0pack"
mkdir "%~dp0pack"
xcopy ""%*"" "%~dp0pack"
cd "%~dp0pack" &(for /F "delims=" %%F IN ('dir /b /a-d') do ( set "fileName=%%F" && rename "%~dp0pack\!fileName!" "%packageName%2.!fileName:~-3,3!"))
@powershell Compress-Archive -Path '%~dp0pack\*' -DestinationPath '%~dp0pack\%packageName%1.zip'
del /F /Q "%~dp0pack\%packageName%2.!fileName:~-3,3!"
xcopy "%~dp0update.a" "%~dp0pack"
rename "%~dp0pack\update.a" "%packageName%.bat"
@powershell Compress-Archive -Path '%~dp0pack\*' -DestinationPath '%~dp0%packageName%_!fileName:~-3,3!.zip'
RD /S /Q "%~dp0pack"