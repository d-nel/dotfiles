
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'

" Colors
Plug 'nightsense/cosmic_latte'

call plug#end()

" lightline requirements
set laststatus=2
set noshowmode
let g:lightline = { 'colorscheme': 'wombat', }

set tabstop=4
set background=dark
colorscheme cosmic_latte

if has("gui_running")
	if has("gui_macvim")
		set guifont=Menlo\ Regular:h14
	elseif has("gui_win32")
		set guifont=Consolas:h14
	endif
endif
