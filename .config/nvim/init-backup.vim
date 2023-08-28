call plug#begin(stdpath('config') . '/plugged')

	if exists('g:vscode')
		"placeholder
	else
	    Plug 'nvim-lua/plenary.nvim'
	    Plug 'nvim-telescope/telescope.nvim'

	endif
	Plug 'chrisbra/improvedft'
	Plug 'tpope/vim-surround'
	Plug 'psliwka/vim-smoothie'

call plug#end()

syntax on

set scrolloff=7
set number relativenumber
set ignorecase
set smartcase
set incsearch
set expandtab
"set tabstop=4 softtabstop=4

let mapleader = " " " map leader to Space

map <leader>h ^
map <leader>l $
map <leader>e <cmd>Telescope find_files<cr>
map <esc> :noh <CR>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
"nnoremap <Tab> >
"nnoremap <S-Tab> <

if exists('g:vscode')
	nnoremap <leader>d <Cmd>call VSCodeCall('editor.action.showHover')<CR>
	set clipboard=unnamedplus
else
	inoremap jk <esc>
	inoremap jj <esc>
endif
"source $HOME/.config/nvim/vim-plug/plugins.vim
