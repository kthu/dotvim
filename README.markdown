Fiks ferdig vim oppsett. Installer ved å klone til ~ :
   
    cd ~
    git clone git://github.com/kthu/dotvim.git .vim

Lag symlink til ~ for .vimrc:

    cd ~
    ln -s .vim/vimrc .vimrc

Installer vundle:

    git clone http://github.com/gmarik/vundle.git ~/.vim/vundle.git

Start vim og kjør

    :BundleInstall

Tada!
