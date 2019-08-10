#!/usr/bin/env sh

if [ -f /replicated.txt ]; then
  echo "Mongo is already set up"
else
  echo "Setting up mongo replication and seeding initial data..."
  # Wait for few seconds until the mongo server is up
  sleep 10
  mongo mongo-primary:27017 replicate.js
  echo "Replication done..."
  # Wait for few seconds until replication takes effect
  sleep 15
  mongo mongo-primary:27017/project_manager seed.js
  echo "Seeding done..."
  touch /replicated.txt
fi
