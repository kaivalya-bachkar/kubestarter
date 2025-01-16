#!/bin/bash

# For AMD64 / x86_64

VERSION="v1.30.0"
URL="https://dl.k8s.io/release/${VERSION}/bin/linux/amd64/kubectl"
INSTALL_DIR="/usr/local/bin"

# Download and install kubectl
curl -LO "$URL"
chmod +x kubectl
sudo mv kubectl $INSTALL_DIR/
kubectl version --client

# Clean up
rm -f kubectl

sudo apt-get install docker.io -y
sudo usermod -aG docker $USER && newgrp docker

echo "kubectl & Docker installation complete."
