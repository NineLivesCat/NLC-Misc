## remove old version
sudo apt remove docker \
               docker-engine \
               docker.io
## https setup
sudo apt update
sudo apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

## GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
## Aliyun mirror
# curl -fsSL https://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
## Aliyun mirror
# sudo add-apt-repository \
#    "deb [arch=amd64] https://mirrors.aliyun.com/docker-ce/linux/ubuntu \
#    $(lsb_release -cs) \
#    stable"

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io

## Start docker
sudo systemctl enable docker
sudo systemctl start docker
## Access setup
sudo groupadd docker
sudo usermod -aG docker $USER
## Test
sudo docker run hello-world