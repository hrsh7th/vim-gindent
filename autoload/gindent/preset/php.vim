function gindent#preset#php#get() abort
  return gindent#preset#extend(gindent#preset#default#get(), {
  \   'indentkeys': [
  \     '.',
  \     '::',
  \     '->'
  \   ],
  \   'indent_patterns': [
  \     { 'prev': ['\.', '$'], 'ignore_syntax': ['Comment', 'TSComment'] },
  \     { 'prev': ['::', '$'], 'ignore_syntax': ['Comment', 'TSComment'] },
  \     { 'prev': ['->', '$'], 'ignore_syntax': ['Comment', 'TSComment'] },
  \     { 'prev': ['\w', '$'], 'curr': ['^', '\.'], 'ignore_syntax': ['Comment', 'TSComment'] },
  \     { 'prev': ['\w', '$'], 'curr': ['^', '::'], 'ignore_syntax': ['Comment', 'TSComment'] },
  \     { 'prev': ['\w', '$'], 'curr': ['^', '->'], 'ignore_syntax': ['Comment', 'TSComment'] },
  \   ],
  \ })
endfunction

