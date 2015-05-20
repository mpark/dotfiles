for file in clang-format gitconfig vimrc zshrc ycm_extra_conf.py; do
  ln -is ${PWD}/${file} ${HOME}/.${file}
done

if [ ! -d "${HOME}/.vim/bundle/Vundle.vim" ]; then
  echo "Installing vundle."
  git clone git@github.com:gmarik/Vundle.vim.git ${HOME}/.vim/bundle/Vundle.vim
fi

if [ ! -d "${HOME}/.oh-my-zsh" ]; then
  echo "Installing oh-my-zsh."
  git clone git@github.com:robbyrussell/oh-my-zsh.git ${HOME}/.oh-my-zsh
fi

if test ! `which brew`; then
  echo "Installing homebrew."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  echo "Installing homebrew packages."
  brew install autoconf
  brew install automake
  brew install boost
  brew install boot2docker
  brew install brew-cask
  brew install ccache
  brew install cmake
  brew install coreutils
  brew install docker
  brew install doxygen
  brew install ghc
  brew install git
  brew install gnu-tar
  brew install go
  brew install graphviz
  brew install htop-osx
  brew install leveldb
  brew install llvm35 --with-clang
  brew install llvm36 --with-clang
  brew install maven
  brew install md5sha1sum
  brew install mesos
  brew install openssl
  brew install python3
  brew install qcachegrind
  brew install readline
  brew install rust
  brew install scons
  brew install subversion
  brew install the_silver_searcher
  brew install tig
  brew install tmux
  brew install valgrind
  brew install vim --with-client-server
  brew install wget

  echo "Installing homebrew-cask packages."
  brew cask install 1password
  brew cask install adobe-reader
  brew cask install amethyst
  brew cask install biicode
  brew cask install chromecast
  brew cask install dash
  brew cask install dropbox
  brew cask install flash-player
  brew cask install google-chrome
  brew cask install google-drive
  brew cask install google-hangouts
  brew cask install iterm2
  brew cask install java
  brew cask install karabiner
  brew cask install lightpaper
  brew cask install mactex
  brew cask install seil
  brew cask install skype
  brew cask install slack
  brew cask install virtualbox
  brew cask install vlc
  brew cask install vmware-fusion
  brew cask install xquartz
fi
