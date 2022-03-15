function! gindent#preset#default#get() abort
  return {
  \   'indentkeys': [
  \     '.',
  \     '::',
  \     '->'
  \   ],
  \   'indent_patterns': [
  \     { 'prev': ['\V{\m', '$'] },
  \     { 'prev': ['\V(\m', '$'] },
  \     { 'prev': ['\V[\m', '$'] },
  \     { 'prev': ['\V<\m', '$'] },
  \     { 'prev': ['\.', '$'] },
  \     { 'prev': ['::', '$'] },
  \     { 'prev': ['->', '$'] },
  \     { 'prev': ['\w', '$'], 'curr': ['^', '\.'] },
  \     { 'prev': ['\w', '$'], 'curr': ['^', '::'] },
  \     { 'prev': ['\w', '$'], 'curr': ['^', '->'] },
  \   ],
  \   'dedent_patterns': [
  \     { 'curr': ['^', '\V}\m'] },
  \     { 'curr': ['^', '\V)\m'] },
  \     { 'curr': ['^', '\V]\m'] },
  \     { 'curr': ['^', '\V>\m'] },
  \   ]
  \ }
endfunction

