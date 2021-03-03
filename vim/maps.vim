" custom keybinds

:imap jj <ESC>
:map <F2> :Explore <CR>
:map <F3> :NERDTreeToggle<CR>
" tab complete
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
