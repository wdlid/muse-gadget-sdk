# One-time ESP-IDF v6.0.1 install for Muse (esp32s3 target).
$ErrorActionPreference = "Stop"
$EspDir = "$env:USERPROFILE\esp"
$IdfRoot = "$EspDir\esp-idf-v6.0.1"
New-Item -ItemType Directory -Force -Path $EspDir | Out-Null
if (-not (Test-Path "$IdfRoot\export.ps1")) {
    git clone -b v6.0.1 --recursive --depth 1 https://github.com/espressif/esp-idf.git $IdfRoot
}
$env:IDF_TOOLS_PATH = "$env:USERPROFILE\.espressif"
Set-Location $IdfRoot
.\install.ps1 esp32s3
Write-Host "Done. Open a new shell and run: . D:\Project\muse\scripts\win\activate-idf.ps1"
