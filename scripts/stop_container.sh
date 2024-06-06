#!/bin/bash
set -e

# Stop the running container (if any)
Containerid= 'docker ps | awk -F " " '{PRINT $1}'' 

#removing existing container
docker rm -f $Containerid
