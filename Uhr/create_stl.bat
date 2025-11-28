@echo off

ECHO Start OPENSCAD


set "SCAD=%ProgramFiles%\OpenSCAD\openscad.exe"
set "FOLDER=.\stl\"

if exist "%SCAD%" (
	"%SCAD%" -o %FOLDER%Uhr_A.stl -D "MODE=1" Uhr.scad
	"%SCAD%" -o %FOLDER%Uhr_B.stl -D "MODE=2" Uhr.scad
) else (
    echo OpenSCAD nicht gefunden!
)

pause