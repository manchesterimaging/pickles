
SET BIN_DIR=..\Pickles.CommandLine\bin\Release\
SET PROJ_NAME=AN150_Test_Script

%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.5 --df=Excel --et="Analysis;Labelling;Performance;Security"
rename  .\Output\features.xlsx %PROJ_NAME%_Admin.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.5 --df=Excel --et="Admin;Labelling;Performance;Security"
rename  .\Output\features.xlsx %PROJ_NAME%_Analysis.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.5 --df=Excel --et="Admin;Analysis;Performance;Security"
rename  .\Output\features.xlsx %PROJ_NAME%_Labelling.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.5 --df=Excel --et="Admin;Analysis;Labelling;Security"
rename  .\Output\features.xlsx %PROJ_NAME%_Performance.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.5 --df=Excel --et="Admin;Analysis;Labelling;Performance"
rename  .\Output\features.xlsx %PROJ_NAME%_Security.xlsx 


REM %BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.5 --df=Excel --et="Admin;Analysis;Labelling;Performance;Security"


REM FOR %%A IN (functional non-functional user) DO (
REM %BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\%%A -o=.\Output\%%A\ --sn=AssistDent --sv=1.5 --df=Excel
REM if errorlevel 1 exit /b 1
REM )

exit /b 0
