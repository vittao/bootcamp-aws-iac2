#!/bin/bash
# IaC2: Script de provisionamento do servidor web

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando servidor Web Apache..."
apt-get install apache2 -y 

echo "Instalando o unzip..."
apt-get install unzip -y 

echo "Instalando o wget..."
apt-get install wget -y 

echo "Baixando arquivos do site..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Instalando arquivos no servidor web..."
cd /tmp/linux-site-dio-main/
cp -R * /var/www/html/

echo "Finalizado."
