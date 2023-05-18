Vagrant.configure("2") do |config|

    config.vm.box = "./packer/output-ubuntu/package.box"

    config.vm.network "forwarded_port", guest: 3000, host:3000
    config.vm.network "forwarded_port", guest: 9090, host:9090
    config.vm.network "forwarded_port", guest: 9100, host:9100
    config.vm.synced_folder "./", "/vagrant", disabled: true

    config.vm.provision "file", source: "./vagrant/docker-compose.yml", destination: "/tmp/docker-compose.yml"
    config.vm.provision "file", source: "./vagrant/prometheus.yml", destination: "/tmp/prometheus.yml"
    config.vm.provision "shell", path: "./vagrant/install.sh"

end