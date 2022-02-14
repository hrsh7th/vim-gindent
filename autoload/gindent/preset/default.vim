function! gindent#preset#default#get() abort
  return {
  \   'indent_patterns': [
  \     '\V{\m\s*$',
  \     '\V(\m\s*$',
  \     '\V[\m\s*$',
  \     '\V<\m\s*$',
  \   ],
  \   'continuation_symbols': [
  \     '.',
  \     '::',
  \     '->',
  \   ],
  \   'dedent_patterns': [
  \     '^\s*\V}\m',
  \     '^\s*\V)\m',
  \     '^\s*\V]\m',
  \     '^\s*\V>\m',
  \   ]
  \ }
endfunction

