

#kalirepository 

#wget -qO - http://http.kali.org/kali/dists/kali-rolling/Release.gpg | sudo apt-key add -

#wget -qO - http://http.kali.org/kali/dists/kali-rolling/Release | sudo apt-key add -

#wget -qO - http://http.kali.org/kali/dists/kali-rolling/InRelease | sudo apt-key add -

#wget -qO - http://http.kali.org/kali/dists/kali-rolling/contrib/debian-installer/binary-amd64/Packages | sudo apt-key add -

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -

wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

sudo add-apt-repository ppa:webupd8team/java

sudo add-apt-repository ppa:webupd8team/haguichi

sudo add-apt-repository ppa:gns3/ppa

sudo add-apt-repository ppa:obsproject/obs-studio

sudo add-apt-repository ppa:smartfinn/eve-ng-integration

sudo add-apt-repository ppa:cockpit-project/cockpit

#sudo add-apt-repository ppa:cairo-dock-team/ppa

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -


sudo add-apt-repository ppa:team-xbmc/ppa

sudo add-apt-repository ppa:certbot/certbot

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 61FF9694161CE595

sudo bash -c 'echo "deb http://repo.xplico.org/ $(lsb_release -s -c) main" >> /etc/apt/sources.list'

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 791C25CE


sudo apt-get update

sudo apt-get -y upgrade

sudo apt-get install -y google-chrome-stable

sudo apt-get install -y oracle-java8-installer

sudo apt-get install -y virtualbox

sudo apt-get install -y ncdu

sudo apt-get install -y wine

sudo apt-get install -y xplico

sudo apt-get install -y git

sudo apt-get install -y haguichi

sudo apt-get install -y docker

sudo apt-get install -y skypeforlinux

sudo apt-get install -y samba 

sudo apt-get install -y openvpn

sudo apt-get install -y apache2

sudo apt-get install -y wget

sudo apt-get install -y dig

sudo apt-get install -y vlc

sudo apt-get install -y kerberos

sudo apt-get install -y reaver

sudo apt-get install -y auto-apt

sudo apt-get install -y mysql-server

sudo apt-get install -y cairo-dock

sudo apt-get install -y docker.io

sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

sudo apt-get install -y opera

sudo apt-get install -y filezilla

sudo apt-get install -y variety

sudo apt-get install -y gpa

sudo apt-get install -y enigmail

#sudo apt-get install -y tor

sudo apt-get install -y gnupg-curl

sudo apt-get install -y wireshark

sudo apt-get install -y automake

sudo apt-get  install -y network-manager-sstp  

sudo apt-get  install -y sstp-client

sudo apt-get -y install strongswan

sudo apt-get -y install strongswan-plugin-eap-mschapv2

sudo apt-get -y install libcharon-extra-plugins

sudo apt-get -y install libstrongswan-extra-plugins

sudo install -y snap

sudo snap install -y bitwarden

wget https://go.skype.com/skypeforlinux-64.deb

sudo dpkg -i skypeforlinux-64.deb

wget https://github.com/meetfranz/franz/releases/download//franz_5.0.0-beta.22_amd64.deb

sudo dpkg -i franz_5.0.0-beta.22_amd64.deb

wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
 
wget -O - http://deb.opera.com/archive.key | sudo apt-key add -

wget https://download.cloud.lastpass.com/linux/lplinux.tar.bz2 

tar xjvf lplinux.tar.bz2

cd lplinux && ./install_lastpass.sh

cd /root

wget http://www.webmin.com/jcameron-key.asc

sudo apt-key add jcameron-key.asc

sudo apt-get update

sudo apt-get install -y webmin

sudo apt-get install -y apt-transport-https

#sudo apt-get install -y python-certbot-apache 

#sudo certbot --apache

#https://certbot.eff.org/#ubuntuxenial-apache

sudo apt-get install -y miredo

miredo

systemctl enable miredo

sudo apt-get install -y eclipse

sudo apt-get install -y gdebi

sudo apt-get install -y nmap

sudo apt-get install -y sqlmap

#sudo apt-get install xbmc

sudo apt-get install -y kodi

#sudo apt-get install freeradius freeradius-mysql

#sudo apt-get install freeradius freeradius-mysql

#sudo apt-get install freeradius-utils 

apt-get install -y cacti

sudo apt-get install -y cockpit

sudo systemctl start cockpit

sudo systemctl enable cockpit

sudo apt-get install obs-studio

sudo apt-get install -y gns3-gui

sudo apt-get install -y eve-ng-integration

git clone https://github.com/firehol/netdata.git --depth=1

cd netdata

sudo ./netdata-installer.sh

systemctl start netdata

git clone https://github.com/fredericopissarra/t50.git

cd t50

./configure

make
make install





