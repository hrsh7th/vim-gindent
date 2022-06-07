"
" gindent#preset#extend
"
function! gindent#preset#extend(parent, additional) abort
  let l:preset = deepcopy(a:additional)

  " indentkeys.
  let l:preset.indentkeys = get(l:preset, 'indentkeys', [])
  for l:indentkey in get(a:parent, 'indentkeys', [])
    call add(l:preset.indentkeys, l:indentkey)
  endfor

  " indent_patterns.
  let l:preset.indent_patterns = get(l:preset, 'indent_patterns', [])
  for l:pattern in get(a:parent, 'indent_patterns', [])
    call add(l:preset.indent_patterns, l:pattern)
  endfor
  
  " dedent_patterns.
  let l:preset.dedent_patterns = get(l:preset, 'dedent_patterns', [])
  for l:pattern in get(a:parent, 'dedent_patterns', [])
    call add(l:preset.dedent_patterns, l:pattern)
  endfor

  return l:preset
endfunction

