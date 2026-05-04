@echo off
REM ========================================
REM Jurassic Burger - Script de Inicio
REM ========================================

echo.
echo 🍔 ======== JURASSIC BURGER ======== 🍔
echo Sistema de Gestion de Ventas Local
echo.

REM Compilar si no existe el JAR
if not exist "build\libs\*.jar" (
    echo Compilando el proyecto...
    call .\gradlew.bat clean build -x test
)

REM Ejecutar la aplicación
echo.
echo Iniciando aplicacion...
echo.

cd build\libs
for /f "tokens=*" %%a in ('dir /b *.jar') do (
    set jarfile=%%a
)

if defined jarfile (
    echo Ejecutando: java -jar %jarfile%
    java -jar %jarfile%
) else (
    echo Error: No se encontro el archivo JAR
    echo Verifica que la compilacion fue exitosa
)

pause
