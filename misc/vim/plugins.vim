if empty(glob('~/.vim/autoload/plug.vim'))
	    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	            \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'dracula/vim', {'as':'dracula'}
call plug#end()
packadd! dracula | colorscheme dracula
let g:coc_global_extensions = [
	      \'coc-go',
	      \'coc-python',
	      \'coc-tsserver',
	      \'coc-java',
	      \'coc-html',
	      \'coc-css',
	      \'coc-sh',
	      \'coc-json'
	      \]
