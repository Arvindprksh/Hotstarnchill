@ echo off
call set /p link=paste the link:
call set folder="%~dp0\videos\\"
call set livestreamer="%~dp0\tools\livestreamer\\"
call "%~dp0\tools\php5.4\php.exe" starsportslivestreamer.php "%%link%%" "%%livestreamer%%"
call set /p quality=write quality (example write 720p):
call set /p choice=play or download? (write p or d):
call "%~dp0\tools\php5.4\php.exe" starsportslivestreamer.php "%%link%%" "%%quality%%" "%%folder%%" "%%livestreamer%%" "%%choice%%"
pause
:end
