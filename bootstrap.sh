if [ ! -d "${HOME}/.vim/bundle/Vundle.vim" ]; then
  echo "Installing vundle."
  git clone https://github.com/VundleVim/Vundle.vim.git ${HOME}/.vim/bundle/Vundle.vim
fi

if [ ! -d "${HOME}/.oh-my-zsh" ]; then
  echo "Installing oh-my-zsh."
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if test ! `which brew`; then
  echo "Installing homebrew."
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

for file in clang-format gitconfig gitignore vimrc zshrc; do
  ln -is ${PWD}/${file} ${HOME}/.${file}
done
