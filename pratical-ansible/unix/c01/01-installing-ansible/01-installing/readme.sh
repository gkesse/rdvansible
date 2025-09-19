#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root
exit

# affiche la version de python
python3 --version

# affiche la version de python-pip
python3 -m pip -V

# installe python-pip
sudo apt install python3-pip

# installe ansible à l'échelle de l'utilisateur
# indique une machine externe (--break-system-packages)
python3 -m pip install --user ansible --break-system-packages

# affiche la version de ansible
/home/$USER/.local/bin/ansible-playbook --version

# configure le répertoire d'installation
export PATH=$PATH:/home/$USER/.local/bin

# affiche la version de ansible-playbook
ansible-playbook --version

# affiche l'emplacement de ansible
which ansible
...
/home/username/.local/bin/ansible
...

# installe ansible à l'échelle du système
# indique une machine externe (--break-system-packages)
sudo python3 -m pip install ansible --break-system-packages

# affiche l'emplacement de ansible
which ansible-playbook
...
/usr/bin/ansible-playbook
...

# affiche la version de ansible
ansible-playbook --version

# installe ansible à l'échelle de l'utilisateur
# indique une machine externe (--break-system-packages)
# installe ansible à la version spécifiée
python3 -m pip install --user ansible==6.2.0 --break-system-packages

# met à jour ansible à l'échelle de l'utilisateur
# indique une machine externe (--break-system-packages)
python3 -m pip install --user --upgrade ansible --break-system-packages

# désinstalle ansible à l'échelle du système
# indique une machine externe (--break-system-packages)
sudo python3 -m pip uninstall ansible ansible-core --break-system-packages
