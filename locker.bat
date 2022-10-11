cls

@ECHO OFF

title Folder Locker

if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK

if NOT EXIST Locker goto MDLOCKER

:CONFIRM

echo Are you sure u want to Lock the folder(Y/N)

set/p "cho=>"

if %cho%==Y goto LOCK

if %cho%==y goto LOCK

if %cho%==n goto END

if %cho%==N goto END

echo Invalid choice.

timeout /t 5 /nobreak > nul

goto CONFIRM

:LOCK

ren Locker "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"

attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"

echo Folder locked shucessfully

timeout /t 5 /nobreak > nul

goto End

:UNLOCK

echo Enter password to Unlock folder or DIE......

set/p "pass=>"

if NOT %pass%==YOUR_PASSWORD_HERE goto FAIL

attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"

ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Locker

echo Folder Unlocked shuccessfully

timeout /t 5 /nobreak > nul

goto End

:FAIL

echo Invalid password. L

timeout /t 5 /nobreak > nul

goto end

:MDLOCKER

md Locker

echo Locker created successfully

goto End

:End
