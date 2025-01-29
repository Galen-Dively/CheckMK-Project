# Download and Install Docker on Rocky Linux
sudo dnf check-update -y
echo "Adding repo to package manager"
sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo -y
echo "Installing docker"
sudo dnf install docker-ce docker-ce-cli containerd.io -y

echo "Start docker"
sudo systemctl start docker

echo "Enabling docker"
sudo systemctl enable docker

sudo systemctl status docker
