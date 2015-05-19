for file in clang-format gitconfig vimrc zshrc; do
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
  brew install autoconf automake boost boot2docker brew-cask ccache cloog cloog-ppl015 cloog018 cmake coreutils docker doxygen gdbm ghc git gmp gmp4 gnu-tar go graphviz htop-osx isl isl011 leveldb libevent libffi libmpc08 libpng libtool llvm35 llvm36 maven md5sha1sum mesos mpfr2 openssl p7zip pandoc pkg-config ppl011 python3 qcachegrind qt readline rust scons snappy sqlite subversion the_silver_searcher tig tmux valgrind vim wget xz zookeeper

  echo "Installing homebrew-cask packages."
  brew cask install 1password adobe-reader amethyst biicode chromecast dash dropbox flash-player google-chrome google-drive google-hangouts iterm2 java karabiner lightpaper mactex seil skype slack virtualbox vlc vmware-fusion xquartz
fi
