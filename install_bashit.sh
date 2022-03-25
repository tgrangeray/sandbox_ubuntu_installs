# Installer git
sudo apt install git
# Installer bash-it
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh --silent --append-to-config
source ~/.bashrc
# Configurer bash-it
sed -i 's/'"$BASH_IT_THEME"'/pure/g' ~/.bashrc
