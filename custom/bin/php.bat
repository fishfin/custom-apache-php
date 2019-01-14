@echo off

call bootstrap.bat

rem set the following block based on your installation
set ff_phpparent=c:\prod\
set ff_customdir=%ff_phpparent%custom\
set ff_defaultphp=php_71ts
set ff_defaultphpini=%ff_customdir%php\phpfcgi\php.ini

set phpver=%ff_defaultphp%
set phpini=%ff_defaultphpini%

set args=

set phpvernext=0
set phpininext=0
:filterargs
  if "%1"=="" goto run
  if /I "%1"=="--help" (
	goto help
  )
  if /I "%1"=="--php-ver" (
    set phpvernext=1
	goto contfilterargs
  )
  if %phpvernext%==1 (
    set phpver=%1
	set phpvernext=0
	goto contfilterargs
  )
  if /I "%1"=="--php-ini" (
    set phpininext=1
	goto contfilterargs
  )
  if %phpininext%==1 (
    set phpini=%1
	set phpininext=0
	goto contfilterargs
  )
  set args=%args% %1
  goto contfilterargs

:contfilterargs
  shift
  goto filterargs

:run
  echo [Using %ff_fgblue%%ff_phpparent%%phpver%%ff_reset% with %ff_fgmagenta%%phpini%%ff_reset%]
  @"%ff_phpparent%%phpver%\php.exe" --php-ini "%phpini%" %args%
  goto exit

:help
  echo Usage: php [options]
  echo    --help         This help
  echo    --php-ver      Use a specific PHP version (must be present in %ff_phpparent%)
  echo    --php-ini      Custom PHP Ini to use
  goto exit

:exit
  exit /B 0
