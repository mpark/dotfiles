CLANG_FORMAT = clang_format
CLANG_FORMAT_FILES = clang-format

GIT = git
GIT_FILES = gitconfig

VIM = vim
VIM_FILES = vimrc

ZSH = zsh
ZSH_FILES = zshrc

APPS = ${CLANG_FORMAT} \
       ${GIT} \
			 ${VIM} \
			 ${ZSH}
FILES = ${CLANG_FORMAT_FILES} \
				${GIT_FILES} \
				${VIM_FILES} \
				${ZSH_FILES}

.PHONY : all clean ${CLANG_FORMAT} ${GIT} ${VIM} ${ZSH}

all: ${APPS}

symlinks = @$(foreach file, ${1}, ln -is ${addprefix ${PWD}/,${file}} ${addprefix ${HOME}/.,${file}};)

${CLANG_FORMAT} : ${CLANG_FORMAT_FILES}
	@$(call symlinks, $^)

${GIT} : ${GIT_FILES}
	@$(call symlinks, $^)

${VIM} : ${VIM_FILES}
	@$(call symlinks, $^)

${ZSH} : ${ZSH_FILES}
	@$(call symlinks, $^)
	@git clone https://github.com/robbyrussell/oh-my-zsh.git ${HOME}/.oh-my-zsh

clean :
	rm -rf ${addprefix ${HOME}/.,${FILES}} ${HOME}/.oh-my-zsh

