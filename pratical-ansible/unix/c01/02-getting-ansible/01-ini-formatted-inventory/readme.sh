#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root
exit

venv=../../01-installing-ansible/02-venv
. ${venv}/ansible-8.0.0/bin/activate

# installe ansible-core
sudo apt install ansible-core

# créer le répertoire des hosts de ansible
mkdir -p /etc/ansible/hosts

# vérifie la disponibilité de ansible
ansible webservers -m anisble.builtin.ping
