#!/bin/bash

echo "Script para criação de um servidor web"
echo "Atualizando pacotes..."

sudo apt update && sudo apt upgrade

echo "Instalando apache..."

sudo apt install apache2 -y

echo "Criando a mainpage..." | sudo tee /var/www/html/index.html

echo "Iniciando apache..."

sudo systemctl start apache2
sudo systemctl enable apache2

echo "Status..."

sudo systemctl status apache2
