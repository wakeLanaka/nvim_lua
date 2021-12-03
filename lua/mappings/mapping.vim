xnoremap * :<c-u>call <SID>VSetSearch('/')<cr>

function! s:VSetSearch(cmdtype)
  let temp = @s
  norm!gv"sy
  let @/ = '\V' . substitute(escape(@s, a:cmdtype.'\'), '\n', '\\n','g')
  let @s = temp
endfunction

" not anymore important when using cmp
set wildcharm=<c-x>
" " little trick to trigger wildmenu with <c-space> (<C-z> is set as wildcharm!)
" cmap <expr><C-space> "\<C-x>"
