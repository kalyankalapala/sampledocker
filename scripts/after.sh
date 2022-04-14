### before ###
#!/bin/bash

#### install docker ###
sudo yum install -y docker ### only the users mentioned in /etc/sudoers file will be allowed to make changes to the docker.
sudo systemctl enable docker
sudo systemctl restart docker

### install docker-compose ####
sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-`uname -s`-`uname -m` | sudo tee /usr/local/bin/docker-compose > /dev/null
sudo chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version

#### docker-compose up ####
cd /home/developer/dockernodejs
sudo docker-compose down
sudo docker rmi -f docker-nodejs
sudo docker-compose up -d

### ghost ###
#sudo docker run -d -p 3001:2368 ghost
#systemctl restart nginx
