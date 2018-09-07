" ~/.vimrc

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" https://github.com/tpope/vim-sensible
Plugin 'tpope/vim-sensible'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'crusoexia/vim-monokai'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-syntastic/syntastic'
Plugin 'justmao945/vim-clang'
Plugin 'Shougo/vimproc.vim'
Plugin 'kana/vim-operator-user'
Plugin 'rhysd/vim-clang-format'
Plugin 'Yggdroot/indentline'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'thinca/vim-localrc'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

runtime! plugin/sensible.vim

set encoding=utf-8 fileencodings=
syntax on

set number
set cc=80
set smartindent
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:indent_guides_enable_on_vim_startup = 1

set tabstop=4
set noexpandtab
set shiftwidth=4

let g:indentLine_char = '¦'
let g:indentLine_setColors = 0

autocmd FileType c,cpp ClangFormatAutoEnable

autocmd Filetype make setlocal noexpandtab

"set list listchars=tab:»·,trail:·

map <C-O> :NERDTreeToggle<CR>

colorscheme monokai
set background=dark

" per .git vim configs
" just `git config vim.settings "expandtab sw=4 sts=4"` in a git repository
" change syntax settings for this repository
let git_settings = system("git config --get vim.settings")
if strlen(git_settings)
	exe "set" git_settings
endif

