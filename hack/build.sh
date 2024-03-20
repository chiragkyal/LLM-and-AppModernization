#!/bin/bash

# Backend
backend_image="backend-app"
backend_dockerfile="./Dockerfile.backend"
backend_repo="quay.io/ckyal/backend-llm"

# Frontend
frontend_image="frontend-app"
frontend_dockerfile="./Dockerfile.frontend"
frontend_repo="quay.io/ckyal/frontend-llm"

# Build and push backend
podman build -t "$backend_image" -f "$backend_dockerfile"
podman tag "$backend_image" "$backend_repo:latest"
podman push "$backend_repo:latest"

# Build and push frontend
podman build -t "$frontend_image" -f "$frontend_dockerfile"
podman tag "$frontend_image" "$frontend_repo:latest"
podman push "$frontend_repo:latest"

## Note: make these images public
