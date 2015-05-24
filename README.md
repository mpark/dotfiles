# dotfiles

## Included

Configurations for a few of the applications I enjoy using.

* __ClangFormat__: `.clang-format`
* __Git__: `.gitconfig`
* __YouCompleteMe__: `.ycm_extra_conf.py`
* __Vim__: `.vimrc`
* __Zsh__: `.zshrc` + `oh-my-zsh`

## Installation

1. Clone this repository. `git clone git@github.com:mpark/dotfiles.git ~/.dotfiles`
1. Run `./bootstrap.sh`

### Local Settings

Add local configurations to the following files. `.gitconfig` and `.zshrc`
automatically loads them if they exist.

* `~/.gitconfig.local`: e.g. `[user]` info.
* `~/.zshrc.local`: e.g. `PATH` environment variable, aliases

### License

This project is licensed under the MIT License.

### Credits

* [thoughtbot](http://github.com/thoughtbot)'s [dotfiles](https://github.com/thoughtbot/dotfiles) helped me figure out how to separate local settings using `.local` files.
* [robbyrussell](http://github.com/robbyrussell)'s [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) project is used in `.zshrc` file.
