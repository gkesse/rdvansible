#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root
exit

#------------------------------------------------
# python2
#------------------------------------------------
# installe python2 si ansible2 installé
sudo apt install python2 python-pip

# installe virtualenv à l'échelle du système
sudo pip2 install virtualenv

# installe l'environnement virtuel ansible2
# indique une machine externe (--break-system-packages)
python2 -m virtualenv ansible-2.7.18

# active l'environnement virtuel ansible2
. ./ansible-2.7.18/bin/activate
(ansible-2.7.18) $

# installe ansible2 dans l'environnement virtuel ansible2
# indique une machine externe (--break-system-packages)
(ansible-2.7.18) $ python -m pip install ansible==2.7.18

# affiche la version de ansible-playbook
(ansible-2.7.18) $ ansible-playbook --version

# désactive l'environnement virtuel
(ansible-2.7.18) $ deactivate
$

#------------------------------------------------
# python3
#------------------------------------------------
# installe python3-venv
sudo apt install python3-venv

# installe l'environnement virtuel ansible8
python3 -m venv ansible-8.0.0

# active l'environnement virtuel ansible8
. ./ansible-8.0.0/bin/activate
(ansible-8.0.0) $

# installe ansible dans l'environnement virtuel ansible8
(ansible-8.0.0) $ python3 -m pip install ansible

# affiche la version de ansible-playbook
(ansible-8.0.0) $ ansible-playbook --version

# désactive l'environnement virtuel
(ansible-2.7.18) $ deactivate
$
