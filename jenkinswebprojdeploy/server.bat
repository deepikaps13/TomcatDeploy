@ECHO OFF
For /F "tokens=1,2 delims==" %%A IN (myFile.properties) DO (
IF "%%A"=="source" (
SET source=%%B
)
IF "%%A"=="destination" (
SET destination=%%B
)
)
xcopy %source% %destination%
chdir /D H:\
cd Jenkins\ApacheServer\apache-tomcat-8.5.37\bin
startup.bat