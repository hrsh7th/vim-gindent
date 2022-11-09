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
    if exists('b:gindent') && get(b:gindent, 'setup', v:false)
      return
    endif
    let b:gindent = get(b:, 'gindent', {})
    let b:gindent.setup = v:true

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

  let l:preset = get(s:presets, &filetype, get(s:presets, '*', v:null))
  if l:preset is v:null
    return 0
  endif

  let l:curr_lnum = v:lnum
  let l:curr_cursor = [l:curr_lnum, strlen(getline(l:curr_lnum))]
  let l:prev_lnum = s:prev_lnum(l:curr_lnum, l:preset)
  let l:prev_cursor = [l:prev_lnum, strlen(getline(l:prev_lnum))]
  let l:curr_line = getline(l:curr_lnum)
  let l:prev_line = getline(l:prev_lnum)
  let l:curr_indent_count = s:indent_count(l:curr_lnum)
  let l:prev_indent_count = s:indent_count(l:prev_lnum)

  " manual_patterns.
  for l:pattern in get(l:preset, 'manual_patterns', [])
    if s:match(l:prev_cursor, l:curr_cursor, l:prev_line, l:curr_line, l:pattern)
      return l:pattern.func({
      \   'one_indent_count': strlen(s:get_one_indent()),
      \   'prev_indent_count': l:prev_indent_count,
      \   'curr_indent_count': l:curr_indent_count,
      \ })
    endif
  endfor

  " indent_patterns.
  for l:pattern in get(l:preset, 'indent_patterns', [])
    if s:match(l:prev_cursor, l:curr_cursor, l:prev_line, l:curr_line, l:pattern)
      let l:prev_indent_count += shiftwidth()
      break
    endif
  endfor

  " dedent_patterns.
  for l:pattern in get(l:preset, 'dedent_patterns', [])
    if s:match(l:prev_cursor, l:curr_cursor, l:prev_line, l:curr_line, l:pattern)
      let l:prev_indent_count -= shiftwidth()
      break
    endif
  endfor

  " Fix for docblock comments.
  if gindent#syntax#in(['Comment', '@comment'])
    if l:curr_line =~# '^\s*\*'
      let l:prev_indent_count += 1
    endif
  endif

  return l:prev_indent_count
endfunction

"
" s:prev_lnum
"
function s:prev_lnum(curr_lnum, preset) abort
  let l:curr_lnum = a:curr_lnum
  while l:curr_lnum > 1
    let l:curr_cursor = [l:curr_lnum, strlen(getline(l:curr_lnum))]
    let l:prev_lnum = prevnonblank(l:curr_lnum - 1)
    let l:prev_cursor = [l:prev_lnum, strlen(getline(l:prev_lnum))]
    let l:curr_line = getline(l:curr_lnum)
    let l:prev_line = getline(l:prev_lnum)

    let l:found = v:false
    for l:pattern in get(a:preset, 'continue_patterns', [])
      let l:found = l:found || s:match(l:prev_cursor, l:curr_cursor, l:prev_line, l:curr_line, l:pattern)
      if l:found
        break
      endif
    endfor
    if !l:found
      break
    endif
    let l:curr_lnum = l:prev_lnum
  endwhile
  return l:prev_lnum
endfunction

"
" s:indent
"
function! s:indent_count(lnum) abort
  return strlen(substitute(matchstr(getline(a:lnum), '^\s*'), '\t', s:get_one_indent(), 'g'))
endfunction

"
" s:match 
"
function! s:match(prev_cursor, curr_cursor, prev_text, curr_text, pattern) abort
  let l:matched = v:true
  if l:matched && has_key(a:pattern, 'prev')
    if a:prev_text !~# s:pattern(a:pattern.prev)
      let l:matched = v:false
    endif
  endif
  if l:matched && has_key(a:pattern, 'prev!')
    if a:prev_text =~# s:pattern(a:pattern['prev!'])
      let l:matched = v:false
    endif
  endif
  if l:matched && has_key(a:pattern, 'curr')
    if a:curr_text !~# s:pattern(a:pattern.curr)
      let l:matched = v:false
    endif
  endif
  if l:matched && has_key(a:pattern, 'curr!')
    if a:curr_text =~# s:pattern(a:pattern['curr!'])
      let l:matched = v:false
    endif
  endif
  for l:dir in ['prev', 'curr']
    if !l:matched | break | endif
    for l:negate in [v:false, v:true]
      if !l:matched | break | endif
      for l:head in [v:false, v:true]
        if !l:matched | break | endif
        let l:key = printf('%s_syntax%s%s', l:dir, l:negate ? '!' : '', l:head ? '^' : '')
        if has_key(a:pattern, l:key)
          if !s:match_syntax(a:prev_cursor, a:curr_cursor, a:pattern[l:key], l:dir, l:negate, l:head)
            let l:matched = v:false
          endif
        endif
      endfor
    endfor
  endfor
  return l:matched
endfunction

"
" s:match_syntax
"
function s:match_syntax(prev_cursor, curr_cursor, syntaxes, dir, negate, head) abort
  let l:cursor = a:dir ==# 'curr' ? a:curr_cursor : a:prev_cursor
  if a:head
    let l:cursor = [l:cursor[0], strlen(matchstr(getline(l:cursor[0]), '^%s*')) + 1]
  endif
  let l:contains = gindent#syntax#in(a:syntaxes, a:dir ==# 'curr' ? a:curr_cursor : a:prev_cursor)
  return a:negate ? !l:contains : l:contains
endfunction

"
" s:get_one_indent
"
function! s:get_one_indent() abort
  return repeat(' ', &shiftwidth ? &shiftwidth : &tabstop)
endfunction

"
" s:pattern 
"
function s:pattern(pattern) abort
  return type(a:pattern) == v:t_list ? join(a:pattern, '\s*') : a:pattern
endfunction

