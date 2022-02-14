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
  if index(g:gindent.filetypes, &filetype) == -1
    return
  endif
  setlocal indentexpr=gindent#indentexpr()
endfunction

"
" gindent#indentexpr
"
function! gindent#indentexpr() abort
  if v:lnum == 1
    return 0
  endif

  let l:preset = get(s:presets, &filetype, gindent#preset#default#get())
  let l:prev_line = getline(prevnonblank(v:lnum - 1))
  let l:curr_line = getline(v:lnum)
  let l:prev_indent_count = s:indent(prevnonblank(v:lnum - 1))
  let l:curr_indent_count = s:indent(v:lnum)

  " indent for pair-open identifiers. 
  for l:indent_pattern in l:preset.indent_patterns
    if l:prev_line =~# l:indent_pattern
      let l:prev_indent_count += shiftwidth()
      break
    endif
  endfor

  " dedent for pair-close identifiers. 
  for l:dedent_pattern in l:preset.dedent_patterns
    if l:curr_line =~# l:dedent_pattern
      if l:curr_indent_count <= l:prev_indent_count
        let l:prev_indent_count -= shiftwidth()
      else
        let l:prev_indent_count = l:curr_indent_count
      endif
      break
    endif
  endfor

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
  return strlen(l:total_indent) - strlen(l:rest_indent)
endfunction

"
" s:get_one_indent
"
function! s:get_one_indent() abort
  return !&expandtab ? "\t" : repeat(' ', &shiftwidth ? &shiftwidth : &tabstop)
endfunction

