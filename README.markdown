Fiks ferdig vim oppsett. Installer ved å klone til ~ :
   
   cd ~
   git clone git://github.com/kthu/dotvim.git .vim

Lag symlink til ~ for .vimrc:

   cd ~
   ln -s .vim/vimrc .vimrc

Initialiser plugin bundles som er installert som git submoduler:

   cd .vim
   git submodule init
   git submodule update

Tada!
