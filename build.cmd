@ECHO off

@REM running "build.cmd clean" will remove intermediate and output library
IF /I "%1" == "clean" (
    RMDIR /S /Q ".\build\" >nul 2>&1
    DEL /Q *.lib >nul 2>&1
    GOTO :EOF
)

@REM compile source files into obj files
IF NOT EXIST ".\build\" MKDIR ".\build\"
cl.exe /nologo /I"./include/" /Fo"./build/" /c .\src\font.c .\src\glaux.c .\src\image.c .\src\shapes.c .\src\teapot.c .\src\tk.c .\src\tkdib.c .\src\tkfont.c .\src\tkimage.c .\src\vect3d.c .\src\xform.c

@REM bundle objs into static library archive
lib.exe /nologo /OUT:"./glaux.lib" .\build\*.obj

