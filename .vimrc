
filetype on
filetype indent on
syntax enable
autocmd BufNewFile *.cpp execute "0r ~/.vim/template/".input("Template name: ").".cpp"
map <F9> :!g++ -g % -o %:r && ./%:r <CR>
map <F5> :!g++ -g % -o %:r <CR>
map <F2> :w <CR>
map <F12> :!gdb ./%:r <CR>
map <C-a> gg v G
map <C-c> "+y
map <C-h> :.,$s/min//g

set whichwrap+=<,>,[,],l,h
set number
set tabstop=4
set shiftwidth=4
set relativenumber

set autoindent
set mouse=a
set background=dark " for the dark version
" set background=light " for the light version
"colorscheme monokai 
:colorscheme jellybeans

"paste in newline
:nmap p :pu<CR>


"Brace completion
inoremap {<CR> {<CR>}<Esc>ko
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

"altenative for esc 
:imap jk <Esc>

"change the line number coloring
hi LineNrAbove guifg=grey ctermfg=grey
hi LineNrBelow guifg=grey ctermfg=grey
:highlight LineNr ctermfg=yellow


" Copy the current buffer's path to your clipboard.
nmap cp :let @+ = expand("%")<CR>

set clipboard=unnamedplus

"terminal colors 256 for rxvt
set t_Co=256 


let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
	Plug 'preservim/nerdtree'
call plug#end()



nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

