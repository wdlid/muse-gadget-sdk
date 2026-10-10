# Activate ESP-IDF v6.0.1 for Muse ESP32 builds (run in PowerShell before idf.py).
$IdfRoot = "$env:USERPROFILE\esp\esp-idf-v6.0.1"
if (-not (Test-Path "$IdfRoot\export.ps1")) {
    Write-Error "ESP-IDF not found at $IdfRoot. Run install-idf.ps1 first."
    exit 1
}
. "$IdfRoot\export.ps1"
Write-Host "ESP-IDF ready: IDF_PATH=$env:IDF_PATH"
