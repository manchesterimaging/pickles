
SET BIN_DIR=..\Pickles.CommandLine\bin\Release\

%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output\ --sn=AssistDent --sv=1.5 --df=Excel

REM FOR %%A IN (functional non-functional user) DO (
REM %BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\%%A -o=.\Output\%%A\ --sn=AssistDent --sv=1.5 --df=Excel
REM if errorlevel 1 exit /b 1
REM )

exit /b 0
