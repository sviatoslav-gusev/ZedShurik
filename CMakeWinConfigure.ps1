[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# Load paths
. "$PSScriptRoot\ToolPaths.ps1"

Write-Host "--- [Configuring Project] ---" -ForegroundColor Cyan

cmake -G "Ninja Multi-Config" -S . -B build `
  "-DCMAKE_EXPORT_COMPILE_COMMANDS=ON" `
  "-DCMAKE_C_COMPILER=$($ToolPaths.ClangC)" `
  "-DCMAKE_CXX_COMPILER=$($ToolPaths.ClangCPP)" `
  "-DCMAKE_MAKE_PROGRAM=$($ToolPaths.Ninja)" `
  "-DCMAKE_PREFIX_PATH=$($ToolPaths.QtPrefix)" `
  "--no-warn-unused-cli"

if ($LASTEXITCODE -eq 0) {
    Write-Host "--- [Configuring done] ---" -ForegroundColor Green
} else {
    Write-Host "--- [Configuring failed] ---" -ForegroundColor Red
}

exit $LASTEXITCODE