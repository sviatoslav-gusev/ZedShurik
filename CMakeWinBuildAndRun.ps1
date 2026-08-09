param (
    [string]$Config = "Debug"
)

# 1. Build
& "$PSScriptRoot\CMakeWinBuild.ps1" -Config $Config

# 2. If success...
if ($LASTEXITCODE -eq 0) {
    
    # 3. Run binary
    & "$PSScriptRoot\CMakeWinRun.ps1" -Config $Config
    
} else {
    Write-Host "Build is broken, skipping run." -ForegroundColor Red
}