
SET BIN_DIR=..\Pickles.CommandLine\bin\Release\
SET PROJ_NAME=AN150_Requirements

REM generate list without exclusions to validate that all tests have been included
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.5 --df=Word
rename  .\Output\AssistDent.docx %PROJ_NAME%_AllRequirements.docx

%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.5 --df=Word --et="FR;NFR"
rename  .\Output\AssistDent.docx %PROJ_NAME%_UserRequirements.docx 

%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.5 --df=Word --et="UR;NFR"
rename  .\Output\AssistDent.docx %PROJ_NAME%_FunctionalRequirements.docx 

%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=1.5 --df=Word --et="UR;FR"
rename  .\Output\AssistDent.docx %PROJ_NAME%_NonFunctionalRequirements.docx 

exit /b 0
