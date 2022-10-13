"
" gindent#syntax#in
"
function! gindent#syntax#in(group_name, ...) abort
  let l:group_names = gindent#syntax#get(get(a:000, 0, getcurpos()[1 : 2]))
  for l:group_name in (type(a:group_name) == v:t_list ? a:group_name : [a:group_name])
    if index(l:group_names, l:group_name) != -1
      return v:true
    endif
  endfor
  return v:false
endfunction

"
" gindent#syntax#get
"
function! gindent#syntax#get(...) abort
  let l:curpos = get(a:000, 0, getcurpos()[1:2])
  return luaeval('require("gindent.kit.Vim.Syntax").get_syntax_groups(_A)', [l:curpos[0] - 1, l:curpos[1] - 1])
endfunction

