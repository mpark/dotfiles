"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
" (_)_/ |_|_| |_| |_|_|  \___|
"
" Vundle {
    set nocompatible              " Disable vi compatibility
    filetype off                  " required
"
"   set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
"
"   let Vundle manage Vundle, required
    Plugin 'gmarik/Vundle.vim'
"
    Plugin 'ntpeters/vim-better-whitespace'
    let g:strip_whitespace_on_save = 1  " Strip whitespace on save by default.
"
    Plugin 'flazz/vim-colorschemes'
"
    Plugin 'embear/vim-localvimrc'
    let g:localvimrc_ask = 0
    let g:localvimrc_name = [ '.vimrc' ]
    let g:localvimrc_sandbox = 0
"
    Plugin 'mileszs/ack.vim'
    let g:ackprg = 'ag --vimgrep -s'
    nnoremap <Leader>a :Ack<Space>
"
    Plugin 'wincent/command-t'
    let g:CommandTFileScanner = 'git'
"
    call vundle#end()            " Required
"
    colorscheme smyck            " Choose a colorscheme.
"
    filetype plugin indent on    " Turn on filetype detection
" }
"
" General {
    syntax on                    " Turn on syntax highlighting
    set noswapfile               " Turn off swap files
    set nobackup
    set nowb
" }
"
" UI {
    set clipboard=unnamed        " Allow for copy/cut/paste across vim instances
    set hlsearch                 " Turn on highlight search
    set incsearch                " Turn on Incremental search
    set mouse=a                  " Allow mouse interactions
    set number                   " Show line number
" }
"
" Formatting {
    set expandtab                " Tabs are spaces
    set shiftwidth=2             " Indents are 2 spaces
    set softtabstop=2            " Tab key in insert mode counts for 2 columns
    set tabstop=2                " Tabs are 2 columns
    set textwidth=80             " Wrap at 80 characters for comments
"   C++ {
      let c_no_curly_error = 1            " Allow braces for initializer list
      set cindent                         " Turn on cindent
      set cinoptions=h0,i2s,l1,t0,(0,W2s  " Custom indent options
      set matchpairs+=<:>                 " Match the angle brackets
"   }
" }
"
" Auto-commands {
    autocmd FileType * set formatoptions=t  " Auto-wrap text and comments at textwidth
" }

" Key-bindings {
    " The default leader is '\', but ',' is closer.
    let mapleader=','
    " Make it so ; works like : for commands. Saves typing and eliminates :W
    " style typos due to lazy holding shift.
    nnoremap ; :
    " On wrapped lines, we go down/up to next row, rather than next line in
    " the file.
    nnoremap j gj
    nnoremap k gk
    " These two binds override the behavior of moving to top and bottom of the
    " screen.
    map <S-H> gT
    map <S-L> gt
    " Yank from the cursor to end-of-line, to be consistent with C and D.
    nnoremap Y y$
    " Clearing highlighted search
    nmap <silent> <leader>/ :nohlsearch<CR>
    " `clang-format` integration.
    map <C-K> :pyf /usr/local/share/clang/clang-format.py<CR>
    imap <C-K> <C-O>:pyf /usr/local/share/clang/clang-format.py<CR>
    " Backspace over everything in insert mode
    set backspace=indent,eol,start
"}
"
" Macros {
    ab cl class
    ab ex explicit
    ab fr friend
    ab #i #include
    ab im int main() {
    ab ns namespace
    ab op operator
    ab pri private
    ab pro protected
    ab pub public
    ab st static
    ab tm template
    ab tn typename
    ab todo /* TODO */
    ab un using namespace
    ab vi virtual
" }
