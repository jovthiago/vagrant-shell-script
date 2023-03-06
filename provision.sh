#!/bin/sh

#script de provisionamento 

ferramentas="vim curl telnet unzip wget net-tools htop nmap"
usuario="thiago"

# Atualizar os repositórios do Ubuntu
sudo apt update

# Instalando alguns pacotes de ferramentas para administrar o servidor
sudo apt install -y "$ferramentas"

# Definindo o nome da máquina
sudo hostnamectl set-hostname webservidor

# Criando um usuário
# Coloquei o meu nome, mas você coloca o nome que quiser
sudo useradd -m $usuario
sudo printf "senha123\senha123456" | passwd $usuario

# Instalando o servidor nginx
sudo apt install -y nginx
service restart