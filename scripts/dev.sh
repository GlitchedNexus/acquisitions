#!/bin/bash

# Development startup script for Acquisition App with Neon Local
# This script starts the application in development mode with Neon Local

echo "🚀 Starting Acquisition App in Development Mode"
echo "================================================"

# Check if .env.development exists
if [ ! -f .env.development ]; then
    echo "❌ Error: .env.development file not found!"
    echo "   Please copy .env.development from the template and update with your Neon credentials."
    exit 1
fi

# Check if Docker is running
if ! docker info >/dev/null 2>&1; then
    echo "❌ Error: Docker is not running!"
    echo "   Please start Docker Desktop and try again."
    exit 1
fi

# Create .neon_local directory if it doesn't exist
mkdir -p .neon_local

# Add .neon_local to .gitignore if not already present
if ! grep -q ".neon_local/" .gitignore 2>/dev/null; then
    echo ".neon_local/" >> .gitignore
    echo "✅ Added .neon_local/ to .gitignore"
fi

echo "📦 Building and starting development containers..."
echo "   - Neon Local proxy will create an ephemeral database branch"
echo "   - Application will run with hot reload enabled"
echo ""

# Start development environment (explicitly load .env.development so service env_file values are available)
docker compose --env-file .env.development -f docker-compose.dev.yml up --build --detach

# Wait for the database to be ready
echo "⏳ Waiting for the database to be ready..."
sleep 15

# Run migrations with Drizzle after containers are running
echo "📜 Applying latest schema with Drizzle..."
NODE_ENV=development docker compose -f docker-compose.dev.yml exec app npm run db:migrate

echo ""
echo "🎉 Development environment started!"
echo "   Application: http://localhost:3000"
echo "   Database: postgres://neon@localhost:5432/neondb"
echo ""
echo "Press Ctrl+C to stop, or run: docker compose -f docker-compose.dev.yml down"
echo ""
echo "📋 Showing application logs..."

# Show logs
docker compose -f docker-compose.dev.yml logs -f app

echo ""
