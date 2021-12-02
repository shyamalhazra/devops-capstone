#check and remove any docker installed before
#sudo apt-get remove docker docker-engine docker.io containerd runc
#Update the apt cache.
sudo apt-get update -y
#Add the GPG key.
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#Add the docker apt repository.
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

#Update the apt cache again.
sudo apt-get update -y

# Install all docker components
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
#add the current user to the docker group
sudo usermod -aG docker $USER
#installing docker-compose
sudo apt install docker-compose -y