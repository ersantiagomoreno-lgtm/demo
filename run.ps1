#!/usr/bin/env pwsh
# ========================================
# Jurassic Burger - Script de Inicio (PowerShell)
# ========================================

Write-Host ""
Write-Host "🍔 ======== JURASSIC BURGER ======== 🍔" -ForegroundColor Yellow
Write-Host "Sistema de Gestion de Ventas Local" -ForegroundColor Cyan
Write-Host ""

# Verificar si el JAR existe
$jarFiles = Get-ChildItem -Path "build/libs/" -Filter "*.jar" -ErrorAction SilentlyContinue

if ($jarFiles.Count -eq 0) {
    Write-Host "Compilando el proyecto..." -ForegroundColor Blue
    & .\gradlew.bat clean build -x test
}

Write-Host ""
Write-Host "Iniciando aplicacion..." -ForegroundColor Green
Write-Host ""

$jarFile = Get-ChildItem -Path "build/libs/" -Filter "*demo*.jar" | Select-Object -First 1

if ($jarFile) {
    Write-Host "Ejecutando: java -jar $($jarFile.Name)" -ForegroundColor Cyan
    & java -jar "build/libs/$($jarFile.Name)"
} else {
    Write-Host "Error: No se encontro el archivo JAR" -ForegroundColor Red
    Write-Host "Verifica que la compilacion fue exitosa"
}
