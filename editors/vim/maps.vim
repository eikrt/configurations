" custom keybinds
:imap jj <ESC>
:map <C-E> :Explore <CR>
:map <C-T> :NERDTreeToggle<CR>
nnoremap <silent> <C-f> :Ag<CR>
" auto close brackets
" tab complete
set backspace=indent,eol,start
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

