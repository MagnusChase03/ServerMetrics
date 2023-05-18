#!/bin/bash

sudo mkdir -p /app
sudo mv /tmp/docker-compose.yml /app
sudo mv /tmp/prometheus.yml /app
sudo chown -R vagrant:vagrant /app

cd /app
sudo docker compose up -d