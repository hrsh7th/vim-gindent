function! gindent#preset#default#get() abort
  return {
  \   'indent_patterns': [
  \     '\V{\m\s*$',
  \     '\V(\m\s*$',
  \     '\V[\m\s*$',
  \     '\V<\m\s*$',
  \   ],
  \   'dedent_patterns': [
  \     '^\s*\V}\m',
  \     '^\s*\V)\m',
  \     '^\s*\V]\m',
  \     '^\s*\V>\m',
  \   ]
  \ }
endfunction

