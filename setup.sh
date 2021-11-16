uname -a >> systeminfo
cat /etc/*release* >> systeminfo

apt-get install sudo -y
sudo apt-get update -y
sudo apt-get install software-properties-common -y
sudo apt-get install wget -y
sudo apt-get install curl -y
sudo apt-get install ufw -y
sudo apt-get install fail2ban -y
sudo apt-get install python3 -y 
sudo apt-get install python3-pip -y
sudo apt-get install git -y
sudo apt-get install default-jdk -y
sudo apt-get install default-jre -y
sudo apt-get install build-essential -y
sudo apt-get install manpages-dev -y

wget -O getdocker.sh https://get.docker.com/
chmod +x getdocker.sh
sudo ./getdocker.sh
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version >> systeminfo

