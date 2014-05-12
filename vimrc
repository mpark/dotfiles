"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
" (_)_/ |_|_| |_| |_|_|  \___|
"
" General {
    filetype plugin indent on                 " Turn on filetype detection
    syntax on                                 " Turn on syntax highlighting
    set nocompatible                          " Disable vi compatibility
" }
"
" UI {
    set clipboard=unnamedplus                 " Allow for copy/cut/paste across vim instances
    set hlsearch                              " Turn on highlight search
    set incsearch                             " Turn on Incremental search
    set mouse=a                               " Allow mouse interactions
    set number                                " Show line number
" }
"
" Formatting {
    set expandtab                             " Tabs are spaces
    set shiftwidth=2                          " Indents are 2 spaces
    set softtabstop=2                         " Tab key in insert mode counts for 2 columns
    set tabstop=2                             " Tabs are 2 columns
    set textwidth=80                          " Wrap at 80 characters per line.
"   C++ {
      let c_no_curly_error = 1                " Allow braces for initializer list
      set cindent                             " Turn on cindent
      set cinoptions=h0,i2s,l1,t0,(0,W2s      " Custom indent options
      set matchpairs+=<:>                     " Match the angle brackets
"   }
" }
"
" Auto-commands {
    " Remove trailing whitespace
    autocmd FileType * autocmd BufWritePre <buffer> :call setline(1, map(getline(1, "$"), 'substitute(v:val,"\\s\\+$","","")'))
    autocmd FileType * set formatoptions=t   " Auto-wrap text and comments at textwidth
" }
"
" Key-bindings {
    " The default leader is '\', but ',' is closer.
    let mapleader=','
    " Make it so ; works like : for commands. Saves typing and eliminates :W
    " style typos due to lazy holding shift.
    nnoremap ; :
    " On wrapped lines, we go down/up to next row, rather than next line in the file.
    nnoremap j gj
    nnoremap k gk
    " These two binds override the behavior of moving to top and bottom of the screen.
    map <S-H> gT
    map <S-L> gt
    " Yank from the cursor to the end of the line, to be consistent with C and D.
    nnoremap Y y$
    " Clearing highlighted search
    nmap <silent> <leader>/ :nohlsearch<CR>
    " Switch between .h and .cc files
    map <F8> :tabe %:p:s,.h$,.X123X,:s,.cc$,.h,:s,.X123X$,.cc,<CR>
    " Clang-format integration.
    map <C-K> :pyf /usr/share/clang/clang-format.py<CR>
    imap <C-K> <ESC>:pyf /usr/share/clang/clang-format.py<CR>i
"}
"
" Macros {
    ab cl class
    ab ex explicit
    ab fr friend
    ab hc /* TODO */
          \<CR>
          \<CR>#pragma once
          \<CR>
    ab #i #include
    ab ic #include <FILEPATH.h>
          \<CR>
    ab im int main() {
    ab nc NO_CONSTRUCTION
    ab ncs NO_COPY_SEMANTICS
    ab ns namespace
    ab op operator
    ab pri private
    ab pro protected
    ab pub public
    ab st static
    ab tm template
    ab tn typename
    ab todo /* TODO */
    ab uc #include <FILEPATH.h>
          \<CR>
          \<CR>#include <gtest/gtest.h>
          \<CR>
    ab un using namespace
    ab vi virtual
" }
