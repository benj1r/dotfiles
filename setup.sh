#!/bin/bash
#________________________________________________
#  ______  ______  ____   _    ____  _____  _____   
# |      >|   ___||    \ | |  |    ||_    ||     |  
# |     < |   ___||     \| | _|    | |    ||     \  
# |______>|______||__/\____||______| |____||__|\__\                                            
# _________________________________________________

# update
sudo apt-get update

# alacritty
git clone https://github.com/alacritty/alacritty.git
cd alacritty
curl --proto '=https' --tlsv1.2 -sSf -y https://sh.rustup.rs | sh
sudo apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
cargo build --release
cd ..

# batcat
sudo apt-get install bat

# nvim
sudo apt-get install neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# linking config files


SRC=('/config/.bashrc' '/config/.profile' '/config/.bash_aliases' '/config/init.vim' '/config/alacritty.yml')

DST=('/.bashrc' '/.profile' '/.bash_aliases' '/.config/nvim/init.vim' '/.config/alacritty/alacritty.yml')

for i in {0..4}
do
    ln -sf $(pwd)${SRC[i]} $(eval echo ~)${DST[i]}
done


#sudo ln -sf $(pwd)/config/init.vim ~/.config/nvim/init.vim

#sudo ln -sf $(pwd)/config/alacritty.yml ~/.config/alacritty/alacritty.yml

#sudo ln -sf $(pwd)/config/.bashrc ~/.bashrc

#sudo ln -sf $(pwd)/config/.profile ~/.profile

#sudo ln -sf $(pwd)/config/.bash_aliases ~/.bash_aliases
