#!/bin/bash

# Navigate to the script's directory
cd "$(dirname "$0")"

echo "Starting MCP and RAG services..."
docker compose up --build
