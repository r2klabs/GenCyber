sudo apt update -y
sudo apt upgrade -y
sudo apt install -y docker.io
sudo systemctl enable docker --now
sudo usermod -aG docker $USER

# Install/Start MySQL (1 or 2 machines)
sudo apt install -y mariadb-server



# Telnet
sudo apt install -y telnetd
sudo /etc/init.d/openbsd-inetd restart


# Images to Pull
docker pull delfer/alpine-ftpserver
docker pull httpd



# Images to Start


#Java
sudo apt install -y default-jdk

