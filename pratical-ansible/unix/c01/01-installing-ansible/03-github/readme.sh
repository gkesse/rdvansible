#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root
exit

# clone ansible
git clone https://github.com/ansible/ansible.git

# se déplace dans le répertoire ansible
cd ansible

# installe les dépendances ansible
pip install -r requirements.txt

# configure l'environnement de développement
source ./hacking/env-setup

# sépecifie un fichier d'inventaire ansible
echo "app01.example.org" > ~/my_ansible_inventory
export ANSIBLE_INVENTORY=~/my_ansible_inventory

# exécute ansible
ansible all -m ansible.builtin.ping

# mettre à jour ansible
git pull --rebase
git submodule update --init --recursive
