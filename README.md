Fiks ferdig vim oppsett. Installer ved å klone til ~/.vim :
 
    git clone https://github.com/kthu/dotvim.git ~/.vim

Lag symlink til ~ for .vimrc:

    ln -s ~/.vim/vimrc ~/.vimrc

Installer vundle 

    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

...og installer bundlene (pass på at verdien av $SHELL er /bin/bash):

    vim -u ~/.vim/bundles.vim +BundleInstall +qall

Tada!
