" custom keybinds
:imap jj <ESC>
:map <C-E> :Explore <CR>
:map <C-T> :NERDTreeToggle<CR>
nnoremap <silent> <C-f> :Files<CR>
set backspace=indent,eol,start
" tab complete
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
