# for code-server terminal
sudo su
sudo apt-update && sudo apt-get install -y docker.io
sudo chmod 666 /var/run/docker.sock 
sudo usermod -aG docker abc

# quit terminal and re-enter


# for jenkins-runner

docker exec jenkins-runner useradd -rm -d /data/code-server/workspace/ubuntu/ -s /bin/bash -g root -G sudo -u 1001 ubuntu
docker exec jenkins-runner chmod 777 /data/code-server/workspace/ubuntu/
docker exec -u ubuntu jenkins-runner bash -c "echo 'PATH=/data/code-server/workspace/ubuntu/.local/bin:/data/code-server/workspace/ubuntu/bin:$PATH' >> /data/code-server/workspace/ubuntu/.bashrc"
docker exec -it -u ubuntu jenkins-runner bash