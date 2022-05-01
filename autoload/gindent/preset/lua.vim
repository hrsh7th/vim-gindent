function! gindent#preset#lua#get() abort
  return {
  \   'indent_patterns': [
  \     { 'prev': ['^', '\<if\>.\{-}\<then\>', '$'] },
  \     { 'prev': ['^', '\<for\>.\{-}\<do\>', '$'] },
  \     { 'prev': ['^', '\<while\>.\{-}\<do\>', '$'] },
  \     { 'prev': ['\<function\>(.\{-})', '$'] },
  \     { 'prev': ['\<function\>', '\w\+\%([\.:]\w\+\)\?', '(.\{-})', '$'] },
  \     { 'prev': ['\V{\m', '$'] },
  \     { 'prev': ['\V(\m', '$'] },
  \     { 'prev': ['\V[\m', '$'] },
  \     { 'prev': ['\V<\m', '$'] },
  \     { 'prev': ['\.', '$'] },
  \     { 'curr': ['^', '\.'] },
  \     { 'prev': ['\:', '$'] },
  \     { 'curr': ['^', '\:'] },
  \   ],
  \   'dedent_patterns': [
  \     { 'curr': ['^', '\<end\>'] },
  \     { 'curr': ['^', '\V}\m'] },
  \     { 'curr': ['^', '\V)\m'] },
  \     { 'curr': ['^', '\V]\m'] },
  \     { 'curr': ['^', '\V>\m'] },
  \   ]
  \ }
endfunction

