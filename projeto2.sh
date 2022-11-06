#!/bin/bash


# inclui o dpkg pois tive problema ao executar sem antes realizar esse comando'


echo "Verificando atualizações do sistema..."
dpkg --configure -a
apt update
apt upgrade -y


echo "Instalando aplicações necessárias..."
apt install apache2 -y
apt install unzip -y


echo "Baixando o arquivo..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp * -r /var/www/html



