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

## Folder Structure

For `launch.ps1` to work correctly, you need to clone all required repositories in the same parent directory. The expected folder structure is:

```
parent-directory/
├── local_deployment/          (this repo)
│   ├── launch.ps1
│   ├── docker-compose.yml
│   └── README.md
├── portal_samochodowy-main/    (frontend + backend)
│   ├── backend/
│   ├── frontend/
│   └── uploads/
├── mcp_service/               (validation & guardrails middleware)
│   ├── app/
│   ├── Dockerfile
│   └── ...
└── otomoto-scraper/           (data retrieval service)
    ├── data/
    ├── Dockerfile.retrieval
    ├── retrieval_service.py
    └── ...
```

### Clone Instructions

```bash
# Create a parent directory
mkdir bielik-project
cd bielik-project

# Clone all required repositories
git clone https://github.com/studzin-sky/local_deployment.git
git clone https://github.com/willemiam/portal_samochodowy-main.git
git clone https://github.com/studzin-sky/mcp_service.git
git clone https://github.com/studzin-sky/otomoto-scraper.git

# Navigate to local_deployment and run
cd local_deployment
./launch.ps1
```

**Important:** All repositories must be siblings in the same parent directory for the Docker Compose relative paths (`../`) to work correctly.
