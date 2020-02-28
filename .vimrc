"changes Vi settings to Vim settings
set nocompatible
filetype off
"numbrer apparently
set number
set relativenumber " show relative line numbers
"idktldr
set wildmenu
"syntax highlighting
syntax on
set showmatch
"search
set incsearch
set ignorecase
set hlsearch
set smartcase
"turn off swap files
set noswapfile
set nobackup
set nowb
"casual tabs
set autoindent
set smartindent
set smarttab
set tabstop=8
set softtabstop=4
"set shiftwidth=4
set noexpandtab
set list listchars=extends:>,precedes:<,tab:»\ ,trail:~
set ai
set cin
"wrap long lines
set wrap

"width of text and highlighting
"set textwidth=80
"set colorcolumn=80

"sugar
set sm

"link vim's clipboard to system's
set clipboard=unnamedplus

"security
set nomodeline

"misc
set showcmd

"folds
"set foldlevelstart=999
"set foldmethod=indent

"save folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

"cursor shape (change term name) and colors
if &term =~ 'st-256color'
	let &t_SI .= "\<Esc>[6 q"
	let &t_EI .= "\<Esc>[2 q"
	set t_ut=
	set t_Co=256
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

"spellcheck key
map <F6> :setlocal spell! spelllang=en<CR>
map <F5> :setlocal spell! spelllang=ru<CR>
map <F7> :set syntax=.c<CR>

"auto closing brackets
inoremap ( ()<left>
inoremap [ []<left>
inoremap {<CR> {<CR>}<ESC>O

"theme
" https://www.nordtheme.com/
colorscheme nord
