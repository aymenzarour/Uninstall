#!/bin/bash

# Stop Jenkins service
sudo systemctl stop jenkins

# Uninstall Jenkins
sudo apt-get remove --purge jenkins

# Remove Jenkins configuration files
sudo rm -rf /var/lib/jenkins
sudo rm -rf /etc/default/jenkins
sudo rm -rf /etc/init.d/jenkins
sudo rm -rf /etc/systemd/system/jenkins.service
sudo rm -rf /var/log/jenkins

# Remove Jenkins user and group
sudo userdel jenkins
sudo groupdel jenkins

# Remove Jenkins repository (if added)
sudo rm -f /etc/apt/sources.list.d/jenkins.list

# Remove Jenkins dependencies (use with caution)
# sudo apt-get autoremove --purge

echo "Jenkins and related files have been uninstalled and removed."
