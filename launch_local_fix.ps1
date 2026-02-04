# Set the working directory to the location of the script
Set-Location $PSScriptRoot

Write-Host "Starting ALL services (Bielik, MCP, RAG) locally with fixes..." -ForegroundColor Cyan
Write-Host "This bypasses the remote HF Space to test your GGUF fixes." -ForegroundColor Yellow

# We need to include the original docker-compose.yml for the base config
# and then override with our local-fix file.
docker compose -f docker-compose.yml -f docker-compose.local-fix.yml up --build
