"
" gindent#misc#doc_comment
"
function gindent#misc#doc_comment(ctx) abort
  for l:i in range(a:ctx.prev_cursor[0], max([1, a:ctx.prev_cursor[0] - 100]), -1)
    if getline(l:i) =~# '^\s*/\*\*$'
      return gindent#indent_count(l:i) + 1
    endif
  endfor
  return a:ctx.prev_indent_count
endfunction
