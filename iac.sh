#!/bin/bash

echo "Buscando por atualizações no sistema..."
apt-get update

echo "Realizando as atualizações encontradas..."
apt-get upgrade -y

echo "Realizando a instalação do servidor web Apache..."
apt-get install apache2 -y

echo "Realiazndo a instalação do unzip..."
apt-get install unzip -y

echo "Realizando o download do site dio no diretório tmp..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Fazendo unzip dos arquivos do site..."
unzip main.zip

echo "Copiando arquivos do site para pasta do servidor Apache..."
cp ./linux-site-dio-main/* /var/www/html -r -v

echo "Finalizado com sucesso..."