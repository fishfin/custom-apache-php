@echo off

set ff_blue='\033[1;34m'
set ff_green='\033[0;32m'
set ff_nc='\033[0m'

set ff_reset=[0m
set ff_bold=[1m
set ff_underline=[4m
set ff_inverse=[7m
set ff_fgblack=[30m
set ff_fgred=[31m
set ff_fggreen=[32m
set ff_fgyellow=[33m
set ff_fgblue=[34m
set ff_fgmagenta=[35m
set ff_fgcyan=[36m
set ff_fgwhite=[37m
set ff_fgredst=[91m
set ff_fggreenst=[92m
set ff_fgyellowst=[93m
set ff_fgbluest=[94m
set ff_fgmagentast=[95m
set ff_fgcyanst=[96m
set ff_fgwhitest=[97m

set ff_bgblack=[40m
set ff_bgred=[41m
set ff_bggreen=[42m
set ff_bgyellow=[43m
set ff_bgblue=[44m
set ff_bgmagenta=[45m
set ff_bgcyan=[46m
set ff_bgwhite=[47m
set ff_bgblackst=[100m
set ff_bgredst=[101m
set ff_bggreenst=[102m
set ff_bgyellowst=[103m
set ff_bgbluest=[104m
set ff_bgmagentast=[105m
set ff_bgcyanst=[106m
set ff_bgwhitest=[107m

rem echo [101;93m COMBINATIONS [0m
rem echo ^<ESC^>[31m                     [31mred foreground color[0m
rem echo ^<ESC^>[7m                      [7minverse foreground ^<-^> background[0m
rem echo ^<ESC^>[7;31m                   [7;31minverse red foreground color[0m
rem echo ^<ESC^>[7m and nested ^<ESC^>[31m [7mbefore [31mnested[0m
rem echo ^<ESC^>[31m and nested ^<ESC^>[7m [31mbefore [7mnested[0m
