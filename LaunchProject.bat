ECHO OFF

set /p choice= "Do you have LEAP? y/n: " 


IF %choice%==n (
  xcopy /s .\Scripts\LeapDisabled\temp.uproject . /Y
)
IF %choice%==y (
  xcopy /s .\Scripts\LeapEnabled\temp.uproject . /Y
)

temp.uproject

echo Ok. Launching Project
pause
del temp.uproject