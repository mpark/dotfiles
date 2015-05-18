# dotfiles

## Included

Simple configurations for a few of the applications that I enjoy using.

* __clangformat__: `.clang-format`
* __git__: simple `.gitconfig`.
* __vim__: simple `.vimrc`.
* __zsh__: uses `oh-my-zsh` and a simple `.zshrc`.

## Intallation

1. Clone this repository. `git clone git@github.com:mpark/dotfiles.git ~/.dotfiles`
3. Clone [robbyrussell](http://github.com/robbyrussell)'s [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) repository. `git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh`
2. `make` to install all configs. `make <config>` to install specific configs

### Local Settings

* `~/.gitconfig.local`: e.g. `[user]` info.
* `~/.zshrc.local`: e.g. `PATH` environment variable, aliases

### License

This project is licensed under the MIT License.

### Credits

* [thoughtbot](http://github.com/thoughtbot)'s [dotfiles](https://github.com/thoughtbot/dotfiles) helped me figure out how to separate local settings using `.local` files.
* [robbyrussell](http://github.com/robbyrussell)'s [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) project is used in `.zshrc` file.
