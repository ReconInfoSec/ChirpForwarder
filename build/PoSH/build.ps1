Set-Location -Verbose $PSScriptRoot  
$env:GOOS="windows"
Set-Location -Verbose ..\..\cmd\ChirpForwarder\ -ErrorAction Stop
Write-Host "building windows ChirpForwarder" -ForegroundColor Green
mkdir -Force -ErrorAction Stop -Path ..\..\release\windows -Verbose
go build -ldflags "-s -w" -o ..\..\release\windows
$env:GOOS="linux"
Write-Host "building linux ChirpForwarder" -ForegroundColor Green
mkdir -Force -ErrorAction Stop -Path ..\..\release\linux -Verbose
go build -ldflags "-s -w" -o ..\..\release\linux
$env:GOOS="darwin"
Write-Host "building macOS ChirpForwarder" -ForegroundColor Green
mkdir -Force -ErrorAction Stop -Path ..\..\release\macOS -Verbose
go build -ldflags "-s -w" -o ..\..\release\macOS
$env:GOOS="windows"
Set-Location -Verbose $PSScriptRoot  


# Set-Location -Verbose $PSScriptRoot
# $env:GOOS="windows"
# Set-Location -Verbose ..\..\cmd\smpconfig\
# go build -v -o ..\..\release\
# $env:GOOS="linux"
# go build -v -o ..\..\release\

Set-Location -Verbose ..\..\release\
