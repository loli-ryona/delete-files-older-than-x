echo https://ss64.com/nt/forfiles.html

color a
@echo OFF
cls
echo Tristan's Automatic File Deleter
echo **This is primarily used for autodeleting cPanel backups and Wordpress backups to save space on a server**
echo Searching for cPanel backups older than 30 days
forfiles /p "[Drive]" /s /m backup*.tar.gz /D -30 /C "cmd /c echo @file"
echo Are you sure you wish to delete the following files older than 30 days?
pause
forfiles /p "[Drive]" /s /m backup*.tar.gz /D -30 /C "cmd /c del @path"
echo Old cPanel backups have being deleted. Press any key to continue to Wordpress backups.
pause
echo Searching for Wordpress backups older than 7 days
forfiles /p "[Drive]" /s /m wp*.tar.gz /D -7 /C "cmd /c echo @file"
echo Are you sure you wish to delete the following files older than 30 days?
pause
forfiles /p "[Drive]" /s /m wp*.tar.gz /D -7 /C "cmd /c del @path"
echo Old Wordpress backups have being deleted. Press any key to close window
pause