
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'

" I'm not sure I'll keep nerdtree. Let's just try it out!
Plug 'scrooloose/nerdtree'

" Colors
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sainnhe/everforest'

" Syntax
Plug 'bfrg/vim-cpp-modern'

call plug#end()

" lightline requirements
set laststatus=2
set noshowmode
let g:lightline = { 'colorscheme': 'everforest', }

set noexpandtab
set shiftwidth=4
set tabstop=4

set incsearch
set scrolloff=5
set splitright
" set autochdir

set invlist
set listchars=tab:⏐\ ,space:⋅


let mapleader = " "
set notimeout
set ttimeout

map <Leader>n :NERDTreeToggle<Enter>
map <Leader>f :NERDTreeFind<Enter>

if has("gui_running")
	set background=dark
	colorscheme everforest

	set guioptions -=L

	set belloff=all
	
	if has("gui_macvim")
		set guifont=Menlo\ Regular:h14
		"set guifont=Menlo\ Regular:h16

		" Maintain undo history between sessions
		set undofile 
		set undodir=~/.vim/undodir

		" Cycle through buffers with the (Shift-)Tab key 
		" nnoremap <Tab> :bnext<CR>
		" nnoremap <S-Tab> :bprevious<CR>
		set hidden
	elseif has("gui_win32")
		set guifont=Consolas:h13
	endif
endif
