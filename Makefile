GIT_FILES = gitconfig
GIT = git

GTK_FILES = gtkrc-2.0
GTK = gtk

I3_FILES = i3status.conf i3
I3 = i3wm

VIM_FILES = vimrc
VIM = vim

X_FILES = Xresources
X = x

ZSH_FILES = zshrc
ZSH = zsh

FILES = ${GIT_FILES} ${GTK_FILES} ${I3_FILES} ${SSH_FILES} ${VIM_FILES} ${X_FILES} ${ZSH_FILES}
APPS = ${GIT} ${GTK} ${I3} ${SSH} ${VIM} ${X} ${ZSH}

.PHONY : all clean ${GIT} ${GTK} ${I3} ${SSH} ${VIM} ${X} ${ZSH}

all: ${APPS}

define symlinks =
	@${foreach file, ${1}, ln -is ${addprefix ${PWD}/,${file}} ${addprefix ${HOME}/.,${file}}; }
endef

${GIT} : ${GIT_FILES}
	@${call symlinks, $^}

${GTK} : ${GTK_FILES}
	@${call symlinks, $^}

${I3} : ${I3_FILES}
	@${call symlinks, $^}

${VIM} : ${VIM_FILES}
	@${call symlinks, $^}

${X} : ${X_FILES}
	@${call symlinks, $^}

${ZSH} : ${ZSH_FILES}
	@${call symlinks, $^}
	@git clone https://github.com/robbyrussell/oh-my-zsh.git ${HOME}/.oh-my-zsh

clean :
	rm -rf ${addprefix ${HOME}/.,${FILES}} ${HOME}/.oh-my-zsh
