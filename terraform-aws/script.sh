#!/bin/bash
sudo apt update -y
sudo apt install -y docker.io git
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ubuntu

# Go to home directory
cd /home/ubuntu

# Clone your repo (CHANGE THIS)
git clone https://github.com/raufmalik002/Dev-Project-2.git app

cd app

# Build Docker image
docker build -t flask-app .

# Run container
docker run -d -p 5000:5000 --name flask-container flask-app
