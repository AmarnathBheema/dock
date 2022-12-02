#!/bin/bash
sudo apt-get update -y
sudo apt-get install  git -y
sudo git clone https://github.com/AmarnathBheema/dock.git
sudo apt-get update -y
sudo apt-get install docker.io -y
sudo apt-get -y install docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
cd dock/
sudo systemctl start docker
sudo systemctl enable docker
sudo docker-compose up -d
