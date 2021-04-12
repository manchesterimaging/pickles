
SET BIN_DIR=..\Pickles.CommandLine\bin\Release\
SET PROJ_NAME=AN160_TestScript

REM generate list without exclusions to validate that all tests have been included
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.6 --df=Excel
rename  .\Output\features.xlsx %PROJ_NAME%_All.xlsx 


%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.6 --df=Excel --et="UR;Analysis;Labelling;Performance;Security"
rename  .\Output\features.xlsx %PROJ_NAME%_Admin_System_FR_NFR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.6 --df=Excel --et="UR;Admin;Labelling;Performance;Security"
rename  .\Output\features.xlsx %PROJ_NAME%_Analysis_System_FR_NFR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.6 --df=Excel --et="UR;Admin;Analysis;Performance;Security"
rename  .\Output\features.xlsx %PROJ_NAME%_Labelling_System_FR_NFR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.6 --df=Excel --et="UR;Admin;Analysis;Labelling;Security"
rename  .\Output\features.xlsx %PROJ_NAME%_Performance_System_FR_NFR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.6 --df=Excel --et="UR;Admin;Analysis;Labelling;Performance"
rename  .\Output\features.xlsx %PROJ_NAME%_Security_System_FR_NFR.xlsx 

%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.6 --df=Excel --et="FR;NFR;Analysis;Labelling;Performance;Security"
rename  .\Output\features.xlsx %PROJ_NAME%_Admin_Validation_UR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.6 --df=Excel --et="FR;NFR;Admin;Labelling;Performance;Security"
rename  .\Output\features.xlsx %PROJ_NAME%_Analysis_Validation_UR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.6 --df=Excel --et="FR;NFR;Admin;Analysis;Performance;Security"
rename  .\Output\features.xlsx %PROJ_NAME%_Labelling_Validation_UR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.6 --df=Excel --et="FR;NFR;Admin;Analysis;Labelling;Security"
rename  .\Output\features.xlsx %PROJ_NAME%_Performance_Validation_UR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.6 --df=Excel --et="FR;NFR;Admin;Analysis;Labelling;Performance"
rename  .\Output\features.xlsx %PROJ_NAME%_Security_Validation_UR.xlsx 



REM %BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.6 --df=Excel --et="Admin;Analysis;Labelling;Performance;Security"


REM FOR %%A IN (functional non-functional user) DO (
REM %BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\%%A -o=.\Output\%%A\ --sn=AssistDent --sv=1.6 --df=Excel
REM if errorlevel 1 exit /b 1
REM )

exit /b 0
