@ECHO OFF
set path=%~dp0;%pythonpath%;%path%
@ECHO ON
python whatsapp_xtract.py ChatStorage.sqlite
pause