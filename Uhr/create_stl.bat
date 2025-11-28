@echo off

ECHO Start OPENSCAD


set "SCAD=%ProgramFiles%\OpenSCAD\openscad.exe"
set "FOLDER=.\stl\"

if exist "%SCAD%" (
	"%SCAD%" -o %FOLDER%Radzimmer_Uhr_A.stl -D "MODE=1" Radzimmer_Uhr.scad
	"%SCAD%" -o %FOLDER%Radzimmer_Uhr_B.stl -D "MODE=2" Radzimmer_Uhr.scad
) else (
    echo OpenSCAD nicht gefunden!
)

pause