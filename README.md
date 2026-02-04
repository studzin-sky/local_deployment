# Local Deployment

Runs the complete Bielik Gap-Filling System (Bielik, MCP, RAG services) locally using Docker Compose.

## Quick Start

### Prerequisites

- Docker & Docker Compose installed
- HuggingFace API token (for gated model access)
- ~8GB free RAM

### Launch

```powershell
./launch.ps1
```

This starts all three services:
- **Bielik App Service**: http://localhost:8000
- **MCP Service**: http://localhost:8001  
- **RAG Service**: http://localhost:8002
