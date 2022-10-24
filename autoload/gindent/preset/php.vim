function gindent#preset#php#get() abort
  return gindent#preset#extend(gindent#preset#default#get(), {
  \   'indentkeys': [
  \     '.',
  \     '::',
  \     '->'
  \   ],
  \   'indent_patterns': [
  \     { 'prev': ['\.', '$'], 'ignore_syntax': ['Comment', '@comment'] },
  \     { 'prev': ['::', '$'], 'ignore_syntax': ['Comment', '@comment'] },
  \     { 'prev': ['->', '$'], 'ignore_syntax': ['Comment', '@comment'] },
  \     { 'prev': ['\w', '$'], 'curr': ['^', '\.'], 'ignore_syntax': ['Comment', '@comment'] },
  \     { 'prev': ['\w', '$'], 'curr': ['^', '::'], 'ignore_syntax': ['Comment', '@comment'] },
  \     { 'prev': ['\w', '$'], 'curr': ['^', '->'], 'ignore_syntax': ['Comment', '@comment'] },
  \   ],
  \ })
endfunction

