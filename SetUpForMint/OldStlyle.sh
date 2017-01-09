#!/bin/bash

#to mint linux
sudo apt-get update
sudo apt-get install cinnamon-desktop-environment

#zsh
 sudo sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#Clipt(when you mark auto copy)
sudo apt-get install ClipIt -y

#nylas mail
wget https://edgehill.nylas.com/download?platform=linux-deb
sudo dpkg -i 'download?platform=linux-deb'
sudo apt-get install -f
cp .nylas/config.cson ~/.nylas/

#For better use
sudo apt-get install python3 -y
sudo apt-get install redshift -y
sudo apt-get install atom -y
sudo apt-get install ipython3 -y
sudo apt-get install htop -y
sudo apt-get install plank -y
sudo apt-get install pidgin -y
sudo apt-get install tmux -y
sudo apt-get -y install mpv -y
sudo apt-get install xclip -y
#sudo apt-get -y install arp-scan -y #hacking tools
sudo apt-get -y install 7z -y      #zip
sudo apt-get -y install unzip -y   #unzip
sudo apt-get -y install zip -y  #zip



#Themes
	sudo apt-add-repository ppa:numix/ppa
	sudo apt-get update
	sudo apt-get install numix-icon-theme-circle
  #window borders
  #	arc
  #icons
  #	numix-cricle
gsettings set org.gnome.desktop.interface icon-theme 'numix-cricle'
  #controls
  #	flatabulous
gsettings set org.gnome.desktop.interface control-theme 'MyIconTheme'
  #mouse pointer
  #	DMZ-White
  #desktop
  #	Android_Holo
gsettings set org.gnome.desktop.wm.preferences theme "Android_Holo"
.
.
.
.
.
.
.
.
.
.
.
.
.
.
#Configs for tmux zsh pidgin ssh.
cd
mkdir git
cd git
git clown https://github.com/dcrystalj/dotfiles
cp -r .config ~/
cp -r .ssh ~/
cp -r .purple ~/
cp -r .tmux.conf ~/
cp -r .zshrc ~/

#Bluethoot problems
sudo rfkill block bluetooth
sudo echo disable > /proc/acpi/ibm/bluetooth
sudo systemctl disable bluetooth.service

#git
git config --global user.name "NightcoreSergeant"
git config --global user.email "tomazic.tadej@gmail.com"
git config --global push.default simple

#To remove all not important stuff(unity)
sudo apt-get purge unity-scope-audacious unity-scope-chromiumbookmarks unity-scope-clementine unity-scope-colourlovers unity-scope-devhelp unity-scope-firefoxbookmarks unity-scope-gdrive unity-scope-gmusicbrowser unity-scope-gourmet unity-scope-manpages unity-scope-musique unity-scope-openclipart unity-scope-texdoc unity-scope-tomboy unity-scope-video-remote unity-scope-yelp unity-scope-zotero unity-lens-music unity-lens-photos unity-lens-video

#skype
wget http://download.skype.com/linux/skype-ubuntu-precise_4.3.0.37-1_i386.deb
sudo dpkg -i skype-ubuntu-precise_4.3.0.37-1_i386.deb

#atom
wget https://atom.io/download/deb
sudo dpkg -i deb
sudo apt-get install -f
cp .atom/config.cson ~/.atom

#pidgin plugins

	#skype
	 sudo apt-get install libpurple-dev libjson-glib-dev cmake gcc
    cd ~/git && git clone git://github.com/EionRobb/skype4pidgin.git --depth 1
    cd skype4pidgin/skypeweb
    mkdir build
    cd build
    cmake ..
    cpack
    sudo dpkg -i skypeweb-1.1.0-Linux.deb

	#facebook
	sudo echo "deb http://download.opensuse.org/repositories/home:/dequis/xUbuntu_15.10 ./" | sudo tee -a /etc/apt/sources.list.d/dequis.list
	sudo apt-get update
	sudo apt-get install -y purple-facebook

#destroy nano
cd /bin
sudo mv nano nano_must_die
sudo ln -s /usr/bin/vim nano
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1

#vim with LUA
sudo apt-get remove --purge vim vim-runtime vim-gnome vim-tiny vim-common vim-gui-common

sudo apt-get build-dep vim-gnome

sudo apt-get install liblua5.1-dev luajit libluajit-5.1 python-dev ruby-dev libperl-dev libncurses5-dev libgnome2-dev libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev

sudo rm -rf /usr/local/share/vim

sudo rm /usr/bin/vim

sudo mkdir /usr/include/lua5.1/include
sudo mv /usr/include/lua5.1/*.h /usr/include/lua5.1/include/

sudo ln -s /usr/bin/luajit-2.0.0-beta9 /usr/bin/luajit

cd ~/git
git clone https://github.com/vim/vim --depth 1
cd vim/src
make distclean
./configure --with-features=huge \
            --enable-rubyinterp \
            --enable-largefile \
            --disable-netbeans \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7/config \
            --enable-perlinterp \
            --enable-luainterp \
            --with-luajit \
            --enable-gui=auto \
            --enable-fail-if-missing \
            --with-lua-prefix=/usr/include/lua5.1 \
            --enable-cscope
make
sudo make install

sudo ln -s /usr/local/bin/vim /usr/local/bin/vi
sudo ln -s /usr/local/bin/vim /usr/bin/vi
sudo ln -s /usr/local/bin/vim /usr/bin/vim


#youtube player
cd ~/git && git clone https://github.com/agiz/youtube-mpv --depth 1
~/git/youtube-mpv/install-ubuntu.sh
cd

#OTHER SETTINGS(if not mention don't change anything)
 #background- off,no picture,none,black

 #themes- mention in 24line

 #accessibility- all off

 #desktop- dektop
  #icons(all off),
  #allow icons from missing monitors to be displayed on the existing ones(ON)

 #extensions- cinamon maximus