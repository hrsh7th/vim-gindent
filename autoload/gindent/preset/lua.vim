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
  \     { 'prev': ['^', '\<repeat\>', '$'] },
  \     { 'prev': ['\<function\>', '(.\{-})', '$'] },
  \     { 'prev': ['\<function\>', '\w\+', '\%([\.:]\w\+\)\?', '(.\{-})', '$'] },
  \   ],
  \   'dedent_patterns': [
  \     { 'curr': ['^', '\<end\>'] },
  \     { 'curr': ['^', '\<elseif\>.\{-}\<then\>', '$'] },
  \     { 'curr': ['^', '\<else\>', '$'] },
  \     { 'curr': ['^', '\<until\>', '$'] },
  \   ]
  \ })
endfunction

