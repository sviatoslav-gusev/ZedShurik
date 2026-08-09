param (
    [string]$File
)

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# Load paths
. "$PSScriptRoot\ToolPaths.ps1"

# Get Clang++ path
$clang = $ToolPaths.ClangCPP

# Create build dir nearby
$sourceDir = Split-Path $File -Parent
$buildDir = Join-Path $sourceDir "build"

if (-not (Test-Path $buildDir)) {
    Write-Host "--- [Creating build directory] ---" -ForegroundColor DarkGray
    New-Item -Path $buildDir -ItemType Directory -Force | Out-Null
}

# Compose absolute binary path
$exeName = [System.IO.Path]::GetFileNameWithoutExtension($File) + ".exe"
$exePath = Join-Path $buildDir $exeName

Write-Host "--- [Compiling $File with Clang] ---" -ForegroundColor Cyan
& $clang -std=c++23 $File -o $exePath

if ($LASTEXITCODE -eq 0) {
    Write-Host "--- [Running $exeName] ---" -ForegroundColor Green
    & $exePath
} else {
    Write-Host "--- [Compilation failed] ---" -ForegroundColor Red
}