#!/bin/bash
sudo apt-get update -y
sudo apt-get install  git -y
git clone https://github.com/AmarnathBheema/local.git
cd /local
sudo mv docker-compose.yml /home/ubuntu
sudo apt-get update -y
sudo apt-get install docker.io -y
sudo apt-get -y install docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo systemctl start docker
sudo systemctl enable docker
sudo docker-compose up -d
