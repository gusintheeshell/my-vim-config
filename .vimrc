" ---------------------------------------------------------------------------
" | General configs                                                         |
" ---------------------------------------------------------------------------

packloadall

set nocompatible               " Don't make vim vi-compatibile

syntax on                      " Enable syntax highlighting

if has('autocmd')
    filetype plugin indent on
    "           │     │    └──── Enable file type detection
    "           │     └───────── Enable loading of indent file
    "           └─────────────── Enable loading of plugin files
endif

set number                     " Show line number
set encoding=UTF-8

-----------------------------------------------------------------------------------------------------

" NERDTREE

" Open NerdTree by default
autocmd VimEnter * NERDTree

" Focus Editor
autocmd VimEnter * wincmd p

" AutoClose NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Show hidden files
let NERDTreeShowHidden=1

----------------------------------------------------------------------------------------------------

" PRETTIER

" Prettier Format On Save
autocmd BufWritePre *.js Neoformat




" ---------------------------------------------------------------------------------------------------

" Git Integration for NERDTREE

let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" Git Gutter
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'

" Config Airline
let g:airline_powerline_fonts = 1

" ----------------------------------

" ----------------------------------------------------------------------
" | Key Mappings                                                       |
" ----------------------------------------------------------------------

" Use a different mapleader (default is '\')
let mapleader = ','

" [,t ] Toggle NERDTree
map <leader>t :NERDTreeToggle<CR>

nnoremap <C-\> :NERDTreeToggle<CR>
inoremap <C-\> <ESC>:NERDTreeToggle<CR>

" ----------------------------------------------------------------------
" | Plugins                                                            |
" ----------------------------------------------------------------------

" Use Vundle to manage the vim plugins
" https://github.com/gmarik/Vundle.vim

" Disable file type detection
" (required by Vundle)
filetype off

" Set the runtime path to include Vundle
set runtimepath+=~/.vim/bundle/Vundle.vim

" Initialize Vundle and specify the path
" where the plugins should be installed
call vundle#begin('~/.vim/bundle')

    " Let Vundle manage Vundle (this is important!)
    Plugin 'gmarik/Vundle.vim'
    Plugin 'wakatime/vim-wakatime'
    " Initial config for TypeScript
    Plugin 'HerringtonDarkholme/yats.vim'
    Plugin 'neoclide/coc.nvim'
    Plugin 'preservim/nerdtree'
    "End of config for TypeScript
    " Initial config for NERDTREE Integration
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'tpope/vim-fugitive'
    " End of config for NERDTREE Integration
    Plugin 'Valloric/YouCompleteMe'
    " post install (yarn install | npm install) then load plugin only for editing supported files
    Plugin 'prettier/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
    Plugin 'sbdchd/neoformat'

call vundle#end()

" ----------------------------------------------------------------------
" | Color Scheme                                                       |
" ----------------------------------------------------------------------

set t_Co=256                   " Enable full-color support

set background=dark            " Use colors that look good
                               " on a dark background

packadd! dracula
syntax enable
colorscheme dracula
