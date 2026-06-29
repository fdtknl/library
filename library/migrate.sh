#!/bin/bash
set -e

echo "Running database migrations..."
cd /src/library.dal
dotnet ef database update --project /src/library.dal/library.dal.csproj --startup-project /src/library.api/library.api.csproj
echo "Database migrations completed successfully!"
