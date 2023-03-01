
SET BIN_DIR=..\Pickles.CommandLine\bin\Release\
SET PROJ_NAME=AN210_Requirements

REM generate list without exclusions to validate that all requirements have been included
%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=2.1 --df=Word
rename  .\Output\AssistDent.docx %PROJ_NAME%_AllRequirements.docx

%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=2.1 --df=Word --et="FR;NFR;WebOnly"
rename  .\Output\AssistDent.docx %PROJ_NAME%_UserRequirements_Desktop.docx 

%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=2.1 --df=Word --et="UR;NFR;WebOnly"
rename  .\Output\AssistDent.docx %PROJ_NAME%_FunctionalRequirements_Desktop.docx 

%BIN_DIR%\Pickles.exe -f=C:\MIL_Src\docs\requirements\ -o=.\Output --sn=AssistDent --sv=2.1 --df=Word --et="UR;FR;WebOnly"
rename  .\Output\AssistDent.docx %PROJ_NAME%_NonFunctionalRequirements_Desktop.docx 

exit /b 0
