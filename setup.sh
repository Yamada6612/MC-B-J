#!/bin/bash

# Atualizar o sistema
apt update
apt upgrade

# Instalar Ruby e lolcat
pkg install ruby -y
gem install lolcat -y

# Criar diretórios para Minecraft Bedrock e Java
mkdir MC/bedrock
mkdir MC/java

# Instalar OpenJDK 17 e wget
pkg install openjdk-17 -y
pkg install wget -y 

echo "Preparando para instalar os recursos para o servidor para o minecraft bedrok/Java"
sleep 2

# Adicionar alias para o comando MC
 echo alias MC="menu.sh" >> ~/.bashrc
# Limpar log 
clear
# Baixar servidor do Minecraft Java Edition
cd MC-B-J/java
wget https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar

# Corrigir nome do arquivo
mv server.jar.1 server.jar 
#copiar menu
cd MC-B-J && cp menu.sh ../ && cd
