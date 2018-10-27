# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  # Check for missing plugins
  required_plugins = %w(vagrant-list vagrant-vbguest vagrant-nfs_guest vagrant-pristine vagrant-disksize)
  plugin_installed = false
  required_plugins.each do |plugin|
    unless Vagrant.has_plugin?(plugin)
      system "vagrant plugin install #{plugin}"
      plugin_installed = true
    end
  end

  # If new plugins installed, restart Vagrant process
  if plugin_installed === true
    exec "vagrant #{ARGV.join' '}"
  end

  config.vm.box = "bento/ubuntu-18.04"  
  config.vm.provider "virtualbox" do |v|
    v.name = "Senior-Project"
    v.gui = true    # Uncomment this line if you want a GUI
    v.cpus = 2
    v.memory = 2048
  end
  config.vm.provision "shell", path: "update.sh"
  # config.vm.provision "shell", path: "gui.sh" # Uncomment this line if you want a GUI
end
