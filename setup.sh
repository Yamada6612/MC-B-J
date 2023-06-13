#!/bin/bash

# Atualizar o sistema
apt update -y
apt upgrade -y

# Instalar Ruby e lolcat
pkg install ruby -y
pkg install python-pip -y
sleep 1
pip install lolcat -y

# Criar diretórios para Minecraft Bedrock e Java
mkdir MC/bedrock
mkdir MC/java

# Instalar OpenJDK 17 e wget
pkg install openjdk-17 -y
pkg install wget -y 

echo "Preparando para instalar os recursos para o servidor para o minecraft bedrok/Java"
sleep 2
#permisao de execução
 chmod +x MC-B-J/menu.sh
# Adicionar alias para o comando MC
 echo alias MC="./MC-B-J/menu.sh" >> ~/.bashrc
 echo alias MC="./MC-B-J/menu.sh" >> ~/.zshrc
# Limpar log 
clear
# Baixar servidor do Minecraft Java Edition
cd MC-B-J/java
wget https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar

# Corrigir nome do arquivo
if [ -e server.jar.1 ]
then
    mv server.jar.1 server.jar
fi

