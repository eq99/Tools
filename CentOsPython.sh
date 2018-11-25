## install git
yum install git
git config --global user.name Qiansen
git config --global user.email zuiaiqiansen@163.com
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

## Install zsh
yum install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## Install python3
# Before install python3.
yum install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gcc make

#get python3
wget https://www.python.org/ftp/python/3.6.2/Python-3.6.2.tar.xz
tar xvJf Python-3.6.2.tar.xz
cd Python-3.6.2

#compile python3
./configure prefix=/usr/local/python3
make && make install

#links
ln -s /usr/local/python3/bin/python3 /usr/bin/python3
ln -s /usr/local/python3/bin/pip3 /usr/bin/pip3

curl https://raw.githubusercontent.com/kennethreitz/pipenv/master/get-pipenv.py | python

## Install neovim
yum remove vim
yum install neovim
pip3 install neovim
curl -sLf https://spacevim.org/install.sh | bash
nvim
