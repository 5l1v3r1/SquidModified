sudo echo "deb-src http://archive.ubuntu.com/ubuntu/ zesty main restricted" >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y openssl build-essential libssl-dev
sudo apt-get build-dep -y squid3
sudo dpkg -i squid_3.5.3-1_amd64.deb
sudo mv /etc/squid3/squid.conf.default /etc/squid3/squid.conf
sudo mv /etc/squid3/mime.conf.default /etc/squid3/mime.conf
sudo mkdir /var/log/squid3
sudo chmod -R 777 /var/log/squid3
sudo squid
mkdir /usr/lib/squid3
mv basic_ncsa_auth /usr/lib/squid3/basic_ncsa_auth
