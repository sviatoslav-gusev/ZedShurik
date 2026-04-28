param (
    [string]$Config = "Debug"
)

# 1. Build
& 'C:/Users/Sviatoslav/AppData/Roaming/Zed/CMakeWinBuild.ps1' -Config $Config

# 2. If success...
if ($LASTEXITCODE -eq 0) {
    
    # 3. Run binary
    & 'C:/Users/Sviatoslav/AppData/Roaming/Zed/CMakeWinRun.ps1' -Config $Config
    
} else {
    Write-Host "Build is broken, skipping run." -ForegroundColor Red
}