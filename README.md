# vagrant-shell-script
# Máquina Vagrant Padronizada com o Shell 

Neste projeto, a máquina ubuntu é criada no Vagrant, é padronizada usando o Shell Script

Após a criação da máquina, o Vagrant irá acionar o shell como provisionador após ler a linha

`vagrant.config.vm.provision "shell", path: "provision.sh"`

Como o shell irá executar os comandos do arquivo provision.sh, que irão executar os seguintes aspectos:

1 - Instalar os pacotes vim, curl, telnet, unzip, wget, net-tools, htop e nmap

2 - Definir o nome da máquina

3 - Criar um usuário

4 - Instalar o servidor web nginx

## Como utilizar este projeto

Para acessar o sevidor nginx. 
Digita esse ip abaixo no seu navegador:
`192.168.5.112`

Para acessar a maquina virtual, execute no seu terminal ou Powershell: 
`vagrant ssh`

Para destruir a maquina virtual, execute no seu terminal ou Powershell: 
`vagrant destroy`
