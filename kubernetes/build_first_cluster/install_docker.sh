# Add the docker repo GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# Add the docker repo
sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable"
# Reload the apt sources list
sudo apt-get update
# Install docker
sudo apt-get install -y docker-ce=18.06.1~ce~3-0~ubuntu
# Prevent auto-updates for the docker package
sudo apt-mark hold docker-ce
# To verify that docker is working by running this command:
sudo docker version