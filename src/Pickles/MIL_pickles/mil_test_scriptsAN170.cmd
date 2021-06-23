
SET BIN_DIR=..\Pickles.CommandLine\bin\Release\
SET PROJ_NAME=AN170_TestScript

REM generate list without exclusions to validate that all tests have been included
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel
rename  .\Output\features.xlsx %PROJ_NAME%_All.xlsx 

REM This is a list of all the current labels
REM Admin;Analysis;Integration;Labelling;Performance;Security
REM DesktopOnly;WebOnly

%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="UR;Analysis;Integration;Labelling;Performance;Security;WebOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Desktop_Admin_System_FR_NFR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="UR;Admin;Integration;Labelling;Performance;Security;WebOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Desktop_Analysis_System_FR_NFR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="UR;Admin;Analysis;Labelling;Performance;Security;WebOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Desktop_Integration_System_FR_NFR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="UR;Admin;Analysis;Integration;Performance;Security;WebOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Desktop_Labelling_System_FR_NFR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="UR;Admin;Analysis;Integration;Labelling;Security;WebOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Desktop_Performance_System_FR_NFR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="UR;Admin;Analysis;Integration;Labelling;Performance;WebOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Desktop_Security_System_FR_NFR.xlsx 

%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="UR;Analysis;Integration;Labelling;Performance;Security;DesktopOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Web_Admin_System_FR_NFR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="UR;Admin;Integration;Labelling;Performance;Security;DesktopOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Web_Analysis_System_FR_NFR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="UR;Admin;Analysis;Labelling;Performance;Security;DesktopOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Web_Integration_System_FR_NFR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="UR;Admin;Analysis;Integration;Performance;Security;DesktopOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Web_Labelling_System_FR_NFR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="UR;Admin;Analysis;Integration;Labelling;Security;DesktopOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Web_Performance_System_FR_NFR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="UR;Admin;Analysis;Integration;Labelling;Performance;DesktopOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Web_Security_System_FR_NFR.xlsx 


%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="FR;NFR;Analysis;Integration;Labelling;Performance;Security;WebOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Desktop_Admin_Validation_UR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="FR;NFR;Admin;Integration;Labelling;Performance;Security;WebOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Desktop_Analysis_Validation_UR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="FR;NFR;Admin;Analysis;Labelling;Performance;Security;WebOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Desktop_Integration_Validation_UR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="FR;NFR;Admin;Analysis;Integration;Performance;Security;WebOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Desktop_Labelling_Validation_UR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="FR;NFR;Admin;Analysis;Integration;Labelling;Security;WebOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Desktop_Performance_Validation_UR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="FR;NFR;Admin;Analysis;Integration;Labelling;Performance;WebOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Desktop_Security_Validation_UR.xlsx 

%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="FR;NFR;Analysis;Integration;Labelling;Performance;Security;DesktopOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Web_Admin_Validation_UR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="FR;NFR;Admin;Integration;Labelling;Performance;Security;DesktopOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Web_Analysis_Validation_UR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="FR;NFR;Admin;Analysis;Labelling;Performance;Security;DesktopOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Web_Integration_Validation_UR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="FR;NFR;Admin;Analysis;Integration;Performance;Security;DesktopOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Web_Labelling_Validation_UR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="FR;NFR;Admin;Analysis;Integration;Labelling;Security;DesktopOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Web_Performance_Validation_UR.xlsx 
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="FR;NFR;Admin;Analysis;Integration;Labelling;Performance;DesktopOnly"
rename  .\Output\features.xlsx %PROJ_NAME%_Web_Security_Validation_UR.xlsx 



REM %BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.7 --df=Excel --et="Admin;Analysis;Labelling;Performance;Security"


REM FOR %%A IN (functional non-functional user) DO (
REM %BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\%%A -o=.\Output\%%A\ --sn=AssistDent --sv=1.7 --df=Excel
REM if errorlevel 1 exit /b 1
REM )

exit /b 0
