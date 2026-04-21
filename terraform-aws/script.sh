#!/bin/bash
set -ex   # VERY IMPORTANT (shows errors)

apt update -y
apt install -y docker.io git

systemctl start docker
systemctl enable docker

# Add ubuntu user to docker group
usermod -aG docker ubuntu

# Move to home
cd /home/ubuntu

# Clone repo
git clone https://github.com/raufmalik002/Dev-Project-2.git

# Go to correct folder (IMPORTANT FIX)
cd Dev-Project-2/app

# Build image
docker build -t flask-app .

# Remove old container if exists
docker rm -f flask-container || true

# Run container
docker run -d -p 5000:5000 --name flask-container flask-app

# Configure Nginx reverse proxy
cat <<EOF > /etc/nginx/sites-available/default
server {
    listen 80;

    location / {
        proxy_pass http://localhost:5000;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
    }
}
EOF

systemctl restart nginx