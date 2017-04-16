#!/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
export PATH
sudo apt-get update -y
sudo apt-get install zip -y
sudo apt-get install screen -y
sudo apt-get install -y language-pack-zh-hant language-pack-zh-hans
sudo apt install -y python
sudo apt install -y git
sudo apt install -y python-pip
pip install requests
pip install pymysql
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password zhuzhu66'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password zhuzhu66'
sudo apt-get install -y mysql-server
sudo apt-get install -y mysql-client
sudo apt-get install -y libmysqlclient-dev
unzip jilu_hktot.zip
unzip userinfo_hk.zip
mysql -u root -p
exit 0
