apt-get install sudo -y
sudo apt-get update -y
sudo apt-get install software-properties-common -y
sudo apt-get install wget -y
sudo apt-get install curl -y
sudo apt-get install ufw -y
sudo apt-get install fail2ban -y
sudo apt-get install python3 -y 
sudo apt-get install python3-pip -y
sudo apt-get install nodejs npm -y
sudo apt-get install git -y
sudo apt-get install default-jdk -y
sudo apt-get install default-jre -y
sudo apt-get install build-essential -y
sudo apt-get install manpages-dev -y
sudo apt-get install htop -y 
sudo apt install libssl-dev -y
sudo apt install ca-certificates -y 
sudo apt install snapd -y
sudo apt-get install unzip -y
curl https://bun.sh/install | bash
sudo npm i -g @quasar/cli

#podman
sudo apt-get install podman -y
podman machine init
pip3 install podman-compose


#docker
wget -O getdocker.sh https://get.docker.com/
chmod +x getdocker.sh
sudo ./getdocker.sh
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


# Check if the file /etc/os-release exists
if [ -f "/etc/os-release" ]; then
    # Source the file to get variables like VERSION_CODENAME
    . /etc/os-release
    
    # Check if VERSION_CODENAME is set
    if [ -n "$VERSION_CODENAME" ]; then
        # Construct the backports URL with the codename
        backports_url="deb http://deb.debian.org/debian ${VERSION_CODENAME}-backports main"
        
        # Output the backports URL into a file
        echo "$backports_url" > /etc/apt/sources.list.d/backports.list
        
        # Update apt
        apt update
        
        # Install Cockpit from backports using the codename
        apt install -t "${VERSION_CODENAME}-backports" cockpit
    else
        echo "Error: Unable to determine Debian version codename."
        exit 1
    fi
else
    echo "Error: /etc/os-release file not found. This script is intended for Debian-based systems."
    exit 1
fi

