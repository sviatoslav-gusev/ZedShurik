param (
    [string]$Config = "Debug"
)

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$cmakePath = "CMakeLists.txt"
if (-not (Test-Path $cmakePath)) {
    Write-Host "[Error] CMakeLists.txt not found!" -ForegroundColor Red
    exit 1
}

$content = Get-Content $cmakePath -Raw
if ($content -match 'add_executable\s*\(\s*([^\s)]+)') {
    $exeName = $matches[1]
    # At Multi-Config there is always build/Config/Name.exe exists
    $exePath = "build\$Config\$exeName.exe"

    if (Test-Path $exePath) {
        Write-Host "--- [Running ${Config}: $exeName] ---" -ForegroundColor Green
        & $exePath
    } else {
        Write-Host "--- [Cannot run] ---" -ForegroundColor Red
        Write-Host "Binary not found: $exePath" -ForegroundColor Yellow
        Write-Host "Looks project was not built for $Config. Run Build task firstly." -ForegroundColor Cyan
        exit 1
    }
} else {
    Write-Host "--- [Running skipped] ---" -ForegroundColor Green
    Write-Host "There is lib. Run is not required." -ForegroundColor Yellow
}
