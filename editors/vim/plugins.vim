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
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'dracula/vim', {'as':'dracula'}
Plug 'tpope/vim-fugitive'
Plug 'beautify-web/js-beautify'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'chun-yang/auto-pairs'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' 
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'pechorin/any-jump.vim'
Plug 'eslint/eslint'

let g:coc_global_extensions=[ 'coc-omnisharp' ]
call plug#end()


autocmd VimEnter * RainbowParentheses
colorscheme dracula
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
