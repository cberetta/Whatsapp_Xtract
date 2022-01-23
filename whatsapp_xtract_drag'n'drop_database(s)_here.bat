@ECHO OFF
set path=%~dp0;%pythonpath%;%path%
if "%~nx1"=="" echo No input file given! You need to drag and drop one or more database file(s) onto this batch script!
if "%~nx1"=="" goto end
@ECHO ON
python "%~dp0whatsapp_xtract.py" %1 -w wa.db
@ECHO OFF
:getfile
shift
if "%~nx1"=="" goto end
@ECHO ON
python "%~dp0whatsapp_xtract.py" %1 -w wa.db
@ECHO OFF
goto getfile
:end
pause