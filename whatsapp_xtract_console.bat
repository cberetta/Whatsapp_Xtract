@ECHO OFF
set path=%~dp0;%pythonpath%;%path%
@ECHO ON
cmd.exe /t:A0 /k python whatsapp_xtract.py -h -w wa.db
