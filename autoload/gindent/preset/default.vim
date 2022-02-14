function! gindent#preset#default#get() abort
  return {
  \   'indentkeys': [
  \     '.',
  \     '::',
  \     '->'
  \   ],
  \   'indent_patterns': [
  \     '\V{\m\s*$',
  \     '\V(\m\s*$',
  \     '\V[\m\s*$',
  \     '\V<\m\s*$',
  \   ],
  \   'continuation_patterns': [
  \     ['\.', '$'],
  \     ['^', '\.'],
  \     ['::', '$'],
  \     ['^', '::'],
  \     ['->', '$'],
  \     ['^', '->'],
  \   ],
  \   'dedent_patterns': [
  \     '^\s*\V}\m',
  \     '^\s*\V)\m',
  \     '^\s*\V]\m',
  \     '^\s*\V>\m',
  \   ]
  \ }
endfunction

