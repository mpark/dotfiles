dotfiles
================

These are my dotfiles in use for my ArchLinux system on ASUS Zenbook Prime (UX31A-DH71).
You are more than welcome to fork this repository, however please be aware that some of the configurations are device specific.

Included
--------
Simple configurations for a few of the applications that I enjoy using.

* __git__: simple `.gitconfig`.
* __gtk__: themes for GTK applications.
* __i3__: i3 window manager configs.
* __vim__: simple `.vimrc`.
* __x__: customized color theme in `.Xresources`.
* __zsh__: uses `oh-my-zsh` and a simple `.zshrc`.

Intallation
-----------
1. Clone this repository. `git clone git@github.com:mpark/dotfiles.git ~/.dotfiles`
3. Clone [robbyrussell](http://github.com/robbyrussell)'s [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) repository. `git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh`
2. Symlink the desired configs. `ln -s ~/.dotfiles/<config> ~/.<config>`

Local Settings
--------------
* `~/.gitconfig.local`: e.g. `[user]` info.
* `~/.zshrc.local`: e.g. `PATH` environment variable, aliases

License
-------
This project is licenced under the MIT license.

Credits
-------
* [thoughtbot](http://github.com/thoughtbot)'s [dotfiles](https://github.com/thoughtbot/dotfiles) helped me figure out how to separate local settings using `.local` files.
* [robbyrussell](http://github.com/robbyrussell)'s [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) project is used in `.zshrc` file.
