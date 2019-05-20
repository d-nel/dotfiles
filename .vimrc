
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'

" I'm not sure I'll keep nerdtree. Let's just try it out!
Plug 'scrooloose/nerdtree'

" Colors
Plug 'nightsense/cosmic_latte'
Plug 'joshdick/onedark.vim'

call plug#end()

" lightline requirements
set laststatus=2
set noshowmode
let g:lightline = { 'colorscheme': 'one', }

set noexpandtab
set shiftwidth=4
set tabstop=4

if has("gui_running")
	" set background=dark
	colorscheme onedark " I'd like to find a better theme soon.

	set guioptions -=L
	
	if has("gui_macvim")
		set guifont=Menlo\ Regular:h14
	elseif has("gui_win32")
		set guifont=Consolas:h13
		set guioptions -=T
		set belloff=all
	endif
endif
