# mpark's dotfiles

These are my dotfiles in use for my ArchLinux system on ASUS Zenbook Prime (UX31A-DH71).
You are more than welcome to fork this repository, however please be aware that some of the configurations are device specific.

## Install

```
% git clone https://github.com/mpark/dotfiles.git ~/.dotfiles
% cd ~/.dotfiles
% make
```

## Uninstall

```
% make clean
```

## Included

Simple configurations for a few of the applications that I enjoy using.

* **git**: simple .gitconfig.
* **gtk**: themes for GTK applications.
* **i3**: window manager tweaks.
* **vim**: simple .vimrc.
* **x**: customized color theme in .Xresources.
* **zsh**: uses oh-my-zsh and a simple zshrc.

## Personal

* ~/.gitconfig.local: e.g. [user] info.
* ~/.zshrc.local: e.g. PATH environment variable.

## License
This project is licenced under the MIT license.

## Credits
* [thoughtbot](http://github.com/thoughtbot)'s [dotfiles](https://github.com/thoughtbot/dotfiles) helped me figure out how to separate personal data using \*.local files.
* [robbyrussell](http://github.com/robbyrussell)'s [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) project is git-clone'd in the Makefile.
