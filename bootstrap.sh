for file in clang-format gitconfig gitignore vimrc zshrc; do
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
fi
