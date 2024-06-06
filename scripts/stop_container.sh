#!/bin/bash
set -euo pipefail

echo "Stopping container..."
# Get the container ID of the running container, ignoring the header line
container_id=$(docker ps --format "{{.ID}}" | awk 'NR==1 {next} NR==2 {print $1}')

if [ -n "$container_id" ]; then
      docker rm -f $container_id
       echo "Container $container_id stopped and removed."
else
    echo "No running container found."
fi
     
