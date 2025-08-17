@ECHO OFF
SETLOCAL

SET DIR=%~dp0
IF NOT EXIST "%DIR%\gradle\wrapper\gradle-wrapper.jar" (
    ECHO Could not find gradle-wrapper.jar in %DIR%\gradle\wrapper.
    EXIT /B 1
)

SET JAVA_EXE=java.exe
IF DEFINED JAVA_HOME (
    SET JAVA_EXE=%JAVA_HOME%\bin\java.exe
)

IF NOT EXIST "%JAVA_EXE%" (
    ECHO ERROR: JAVA_HOME is not set and no 'java' command could be found.
    EXIT /B 1
)

"%JAVA_EXE%" -Xmx64m -Xms64m -cp "%DIR%\gradle\wrapper\gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain %*
ENDLOCAL
