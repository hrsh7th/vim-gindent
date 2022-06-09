function! gindent#preset#lua#get() abort
  return gindent#preset#extend(gindent#preset#default#get(), {
  \   'indentkeys': [
  \     'elseif',
  \     'else',
  \     'end',
  \   ],
  \   'indent_patterns': [
  \     { 'prev': ['^', '\<if\>.\{-}\<then\>', '$'] },
  \     { 'prev': ['^', '\<elseif\>.\{-}\<then\>', '$'] },
  \     { 'prev': ['^', '\<else\>', '$'] },
  \     { 'prev': ['^', '\<for\>.\{-}\<do\>', '$'] },
  \     { 'prev': ['^', '\<while\>.\{-}\<do\>', '$'] },
  \     { 'prev': ['\<function\>(.\{-})', '$'] },
  \     { 'prev': ['\<function\>', '\w\+\%([\.:]\w\+\)\?', '(.\{-})', '$'] },
  \     { 'prev': ['\.', '$'], 'ignore_syntax': ['Comment', 'TSComment'] },
  \     { 'prev': ['\:', '$'], 'ignore_syntax': ['Comment', 'TSComment'] },
  \     { 'curr': ['^', '\.'], 'ignore_syntax': ['Comment', 'TSComment'] },
  \     { 'curr': ['^', '\:'], 'ignore_syntax': ['Comment', 'TSComment'] },
  \   ],
  \   'dedent_patterns': [
  \     { 'curr': ['^', '\<end\>'] },
  \     { 'curr': ['^', '\<elseif\>.\{-}\<then\>', '$'] },
  \     { 'curr': ['^', '\<else\>', '$'] },
  \   ]
  \ })
endfunction

