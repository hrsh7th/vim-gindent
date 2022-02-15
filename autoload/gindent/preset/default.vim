function! gindent#preset#default#get() abort
  return {
  \   'indentkeys': [
  \     '.',
  \     '::',
  \     '->'
  \   ],
  \   'indent_patterns': [
  \     ['\V{\m', '$'],
  \     ['\V(\m', '$'],
  \     ['\V[\m', '$'],
  \     ['\V<\m', '$'],
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
  \     ['^', '\V}\m'],
  \     ['^', '\V)\m'],
  \     ['^', '\V]\m'],
  \     ['^', '\V>\m'],
  \   ]
  \ }
endfunction

