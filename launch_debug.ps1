# Set the working directory to the location of the script
Set-Location $PSScriptRoot

Write-Host "Starting MCP Service in DEBUG mode..." -ForegroundColor Magenta
Write-Host "Debugger will listen on port 5678. Waiting for client attach..." -ForegroundColor Gray

docker compose -f docker-compose.yml -f docker-compose.debug.yml up --build
