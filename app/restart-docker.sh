#!/bin/bash
docker compose stop
docker rm app-web-1
docker rm app-app-1
docker rm app-db-1
docker rmi app-app:latest
docker compose up -d
