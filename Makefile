CLANG_FORMAT = clangformat
CLANG_FORMAT_FILES = clang-format

GIT = git
GIT_FILES = gitconfig

GTK = gtk
GTK_FILES = gtkrc-2.0

I3 = i3wm
I3_FILES = i3status.conf i3

VIM = vim
VIM_FILES = vimrc

X = x
X_FILES = Xresources

ZSH = zsh
ZSH_FILES = zshrc

APPS = ${CLANG_FORMAT} \
			 ${GIT} \
			 ${GTK} \
			 ${I3} \
			 ${SSH} \
			 ${VIM} \
			 ${X} \
			 ${ZSH}
FILES = ${CLANG_FORMAT_FILES} \
				${GIT_FILES} \
				${GTK_FILES} \
				${I3_FILES} \
				${SSH_FILES} \
				${VIM_FILES} \
				${X_FILES} \
				${ZSH_FILES}

.PHONY : all clean ${CLANG_FORMAT} ${GIT} ${GTK} ${I3} ${SSH} ${VIM} ${X} ${ZSH}

all: ${APPS}

symlinks = @$(foreach file, ${1}, ln -is ${addprefix ${PWD}/,${file}} ${addprefix ${HOME}/.,${file}};)

${CLANG_FORMAT} : ${CLANG_FORMAT_FILES}
	@$(call symlinks, $^)

${GIT} : ${GIT_FILES}
	@$(call symlinks, $^)

${GTK} : ${GTK_FILES}
	@$(call symlinks, $^)

${I3} : ${I3_FILES}
	@$(call symlinks, $^)

${VIM} : ${VIM_FILES}
	@$(call symlinks, $^)

${X} : ${X_FILES}
	@$(call symlinks, $^)

${ZSH} : ${ZSH_FILES}
	@$(call symlinks, $^)
	# @git clone https://github.com/robbyrussell/oh-my-zsh.git ${HOME}/.oh-my-zsh

clean :
	rm -rf ${addprefix ${HOME}/.,${FILES}} ${HOME}/.oh-my-zsh

