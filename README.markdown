Fiks ferdig vim oppsett. Installer ved å klone til ~/.vim :
   
    git clone https://github.com/kthu/dotvim.git ~/.vim

Lag symlink til ~ for .vimrc:

    ln -s ~/.vim/vimrc ~/.vimrc

Installer vundle og installer bundlene:

    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim +BundleInstall +qall

Tada!
