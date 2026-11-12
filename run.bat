@echo off
setlocal
cd /d "%~dp0"

where javac >nul 2>nul
if errorlevel 1 (
    echo JDK not found. Install JDK 17 or newer and add it to PATH.
    pause
    exit /b 1
)

if not exist out mkdir out
echo Compiling College Assessment Portal...
javac -d out src\Main.java
if errorlevel 1 (
    echo Compilation failed.
    pause
    exit /b 1
)

echo Starting College Assessment Portal...
java -cp out Main
