if empty(glob('~/.vim/autoload/plug.vim'))
	    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	            \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'

call plug#end()

let g:coc_global_extensions = [
	      \'coc-go',
	      \'coc-python',
	      \'coc-tsserver',
	      \'coc-json'
	      \]
