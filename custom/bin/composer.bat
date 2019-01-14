@echo off
rem set PHPDIR=c:\prod\php71ts
rem echo [Using %PHPDIR%]
rem set PATH=%PHPDIR%;%PATH%
@"php.bat" "%~dp0composer.phar" %*
