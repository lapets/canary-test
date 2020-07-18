@IF EXIST *.obj @DEL *.obj
@IF EXIST target\*.exp @DEL target\*.exp
@IF EXIST target\*.lib @DEL target\*.lib
@IF EXIST target\*.l @DEL target\*.l

copy /y NUL target\test.error.invalid.l >NUL
cl source/test.error.none.cpp /nologo /LD /Fetest.error.none.l
cl source/test.error.logic.cpp /nologo /LD /Fetest.error.logic.l
cl source/test.error.runtime.cpp /nologo /LD /Fetest.error.runtime.l
copy "test.error.none.l" "target\test.error.none.l"
copy "test.error.logic.l" "target\test.error.logic.l"
copy "test.error.runtime.l" "target\test.error.runtime.l"

@IF EXIST *.obj @DEL *.obj
@IF EXIST target\*.exp @DEL target\*.exp
@IF EXIST target\*.lib @DEL target\*.lib
