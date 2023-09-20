Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.box_version = "2004.01"
  
  config.vm.provider :virtualbox do |v|
    v.memory = 512
    v.cpus = 1
  end
  
  boxes = [
    { :name => "backup",
      :ip => "192.168.11.150",
      :prov_file => "ansible/prov-backup.yml",
    },
    { :name => "client",
      :ip => "192.168.11.160",
      :prov_file => "ansible/prov-client.yml",
    }
  ]
 
  boxes.each do |opts|
    config.vm.define opts[:name] do |config|
      config.vm.hostname = opts[:name]
      config.vm.network "private_network", ip: opts[:ip]
      config.vm.provision "ansible" do |ansible|
        ansible.playbook = opts[:prov_file]
        ansible.inventory_path = "ansible/hosts"
        ansible.host_key_checking = "false"
        ansible.verbose = "v"
        ansible.limit = "all"
      end
    end
  end
end
