@echo off
setlocal
cd /d "%~dp0"

title PRECIO MUNDIAL - Comparador Inteligente Cd. Madero
color 0A

echo ==============================================================================
echo           INSTITUTO TECNOLOGICO DE CIUDAD MADERO - IT MADERO
echo                      PROYECTO FINAL DE PROGRAMACION
echo ==============================================================================
echo   Aplicacion : Precio Mundial - Comparador de Precios y Calculadora
echo   Autor      : Juan Carlos Chirinos Gutierrez
echo   Matricula  : 26070627
echo   Carrera    : Ingenieria Mecanica
echo ==============================================================================
echo.

set "PATH=%LOCALAPPDATA%\Programs\nodejs;C:\Program Files\nodejs;%PATH%"

echo [Paso 1 de 3] Comprobando entorno Node.js...
node -v >nul 2>&1
if errorlevel 1 (
    echo.
    echo [ERROR] No se detecto Node.js instalado en tu equipo.
    echo Por favor descarga e instala Node.js LTS desde: https://nodejs.org/
    echo.
    pause
    exit /b 1
)
echo [OK] Node.js listo.
echo.

echo [Paso 2 de 3] Verificando dependencias del proyecto...
if not exist "node_modules" (
    echo [INFO] Instalando librerias por primera vez, espera un momento...
    call npm.cmd install
    if errorlevel 1 (
        echo [ERROR] Error durante npm install.
        pause
        exit /b 1
    )
)
echo [OK] Librerias completas.
echo.

echo [Paso 3 de 3] Iniciando servidor de desarrollo...
echo Abriendo tu navegador en http://localhost:5173
echo.
echo Presiona Ctrl + C en esta ventana para apagar el servidor cuando termines.
echo ==============================================================================
echo.

start "" "http://localhost:5173"
call npm.cmd run dev

pause