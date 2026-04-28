param (
    [string]$Config = "Debug"
)

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

Write-Host "--- [Building $Config] ---" -ForegroundColor Cyan
cmake --build build --config $Config

if ($LASTEXITCODE -eq 0) {
    Write-Host "--- [Building $Config done] ---" -ForegroundColor Green
} else {
    Write-Host "--- [Building $Config failed] ---" -ForegroundColor Red
}

# return cmake exit code (0 - success, else - error)
exit $LASTEXITCODE