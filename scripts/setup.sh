#!/bin/bash
# setup.sh - Development environment setup for Humane Society Management System

echo "Make sure script is being run in HumaneSociety directory"

echo "Setting up development environment for Humane Society Management System..."

# Exit on any error
set -e

# Check for required tools
echo "Checking for required tools..."

# Check for Docker
if ! command -v docker &> /dev/null; then
    echo "Error: Docker is not installed. Please install Docker."
    exit 1
fi

# Build and start containers
echo "Building and starting Docker containers..."
cd deploy
docker compose up --build -d

# Wait for services to be ready
echo "Waiting for services to be ready..."
sleep 10

echo "Development environment setup complete!"
echo
echo "Available services:"
echo "  - Frontend: http://localhost:5173"
echo "  - Backend API: http://localhost:8080/api/"
echo
echo "Useful commands:"
echo "  - View logs: cd deploy && docker compose logs -f"
echo "  - Stop environment: cd deploy && docker compose down"
echo "  - Restart services: cd deploy && docker compose restart"