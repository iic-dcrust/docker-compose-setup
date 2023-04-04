#!/bin/bash

echo "Fetching New Changes"

cd server && git pull origin development && echo "Latest server code Fetched"

cd ../web && git pull origin development && echo "Latest web code Fetched"

cd ../ 

echo "Updating docker containers"

docker-compose -f docker-compose-production.yml up --build -d
