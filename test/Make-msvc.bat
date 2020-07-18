CALL "C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\Common7\Tools\VsDevCmd.bat" -host_arch=amd64 -arch=amd64
CALL "C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\Common7\Tools\VsDevCmd.bat" -test

@IF EXIST *.obj @DEL *.obj
@IF EXIST target\*.exp @DEL target\*.exp
@IF EXIST target\*.lib @DEL target\*.lib
@IF EXIST target\*.l @DEL target\*.l

COPY /y NUL target\test.error.invalid.l >NUL
cl source/test.error.none.cpp /nologo /LD /Fetarget/test.error.none.l
cl source/test.error.logic.cpp /nologo /LD /Fetarget/test.error.logic.l
cl source/test.error.runtime.cpp /nologo /LD /Fetarget/test.error.runtime.l

@IF EXIST *.obj @DEL *.obj
@IF EXIST target\*.exp @DEL target\*.exp
@IF EXIST target\*.lib @DEL target\*.lib
