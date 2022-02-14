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
  return s:get_syntax_groups(l:curpos) + s:get_treesitter_syntax_groups([l:curpos[0] - 1, l:curpos[1] - 1])
endfunction

"
" s:get_syntax_groups
"
function! s:get_syntax_groups(curpos) abort
  let l:group_names = []
  for l:syn_id in call('synstack', a:curpos)
    call add(l:group_names, synIDattr(synIDtrans(l:syn_id), 'name'))
  endfor
  return l:group_names
endfunction

"
" s:get_treesitter_syntax_groups
"
function! s:get_treesitter_syntax_groups(curpos) abort
  if !has('nvim')
    return []
  endif
  return luaeval('require("gindent.syntax").get_treesitter_syntax_groups(_A)', a:curpos)
endfunction

