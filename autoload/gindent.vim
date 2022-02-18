let s:presets = {}

"
" gindent#register_preset
"
function! gindent#register_preset(filetype, preset) abort
  let s:presets[a:filetype] = a:preset
endfunction

"
" gindent#apply
"
function! gindent#apply() abort
  if g:gindent.enabled()
    let l:preset = get(s:presets, &filetype, gindent#preset#default#get())
    setlocal indentexpr=gindent#indentexpr()
    if has_key(l:preset, 'indentkeys')
      execute printf('setlocal indentkeys+=%s', join(map(l:preset.indentkeys, '"=" ..  escape(v:val, ", \t\\")'), ','))
    endif
  endif
endfunction

"
" gindent#indentexpr
"
function! gindent#indentexpr() abort
  if v:lnum == 1
    return 0
  endif

  let l:preset = get(s:presets, &filetype, s:presets['*'])
  let l:prev_line = getline(prevnonblank(v:lnum - 1))
  let l:curr_line = getline(v:lnum)
  let l:prev_indent_count = s:indent(prevnonblank(v:lnum - 1))
  let l:curr_indent_count = s:indent(v:lnum)

  " indent for pair-open identifiers. 
  for l:pattern in get(l:preset, 'indent_patterns', [])
    if s:match(l:prev_line, l:curr_line, l:pattern)
      let l:prev_indent_count += shiftwidth()
      break
    endif
  endfor

  " dedent for pair-close identifiers. 
  for l:pattern in get(l:preset, 'dedent_patterns', [])
    if s:match(l:prev_line, l:curr_line, l:pattern)
      if l:curr_indent_count <= l:prev_indent_count
        let l:prev_indent_count -= shiftwidth()
      else
        let l:prev_indent_count = l:curr_indent_count
      endif
      break
    endif
  endfor

  " Fix for docblock comments. 
  if gindent#syntax#in(['Comment', 'TSComment'])
    if l:curr_line =~# '^\s*\*'
      let l:prev_indent_count += 1
    endif
  endif

  return l:prev_indent_count
endfunction

"
" s:indent
"
function! s:indent(lnum) abort
  let l:one_indent = s:get_one_indent()
  let l:total_indent = matchstr(getline(a:lnum), '^\s*')
  let l:rest_indent = l:total_indent
  while strlen(l:rest_indent) >= strlen(l:one_indent)
    let l:rest_indent = strpart(l:rest_indent, strlen(l:one_indent))
  endwhile
  let l:fixed_indent = strlen(l:total_indent) - strlen(l:rest_indent)
  if &expandtab == 0
    let l:fixed_indent *= shiftwidth()
  endif
  return l:fixed_indent
endfunction

"
" s:match 
"
function! s:match(prev_text, curr_text, pattern) abort
  let l:matched = v:true
  if has_key(a:pattern, 'prev')
    let l:matched = l:matched && a:prev_text =~# (type(a:pattern.prev) == v:t_list ? join(a:pattern.prev, '\s*') : a:pattern.prev)
  endif
  if has_key(a:pattern, 'curr')
    let l:matched = l:matched && a:curr_text =~# (type(a:pattern.curr) == v:t_list ? join(a:pattern.curr, '\s*') : a:pattern.curr)
  endif
  return l:matched
endfunction

"
" s:get_one_indent
"
function! s:get_one_indent() abort
  return !&expandtab ? "\t" : repeat(' ', &shiftwidth ? &shiftwidth : &tabstop)
endfunction

