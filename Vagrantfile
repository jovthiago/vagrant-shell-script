Vagrant.configure("2") do |config|
  
  config.vm.box_download_insecure=true
  config.vm.define "Thiago"
  #Definir o SO
  config.vm.box = "ubuntu/jammy64"

  #configuração de rede

  #Porta Redirecionada 
  config.vm.network "forwarded_port", guest: 80, host: 8090
  #Rede configurada como privada com ip estático 

  config.vm.network "public_network", ip: "192.168.5.112"

  #Configuração da VM utilizando o shell 
  config.vm.provision "shell", path: "provision.sh"
  
    
  #configuração de recursos da maquina 
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

end