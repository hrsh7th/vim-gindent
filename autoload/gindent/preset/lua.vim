function! gindent#preset#lua#get() abort
  return {
  \   'indent_patterns': [
  \     ['^', '\<if\>.\{-}\<then\>'],
  \     ['^', '\<for\>.\{-}\<do\>'],
  \     ['^', '\<while\>.\{-}\<do\>'],
  \     ['\<function\>(.\{-})', '$'],
  \     ['\<function\>', '\w\+\%(\.\w\+\)\?', '(.\{-})', '$'],
  \     ['\V{\m', '$'],
  \     ['\V(\m', '$'],
  \     ['\V[\m', '$'],
  \     ['\V<\m', '$'],
  \   ],
  \   'dedent_patterns': [
  \     ['^', '*\<end\>'],
  \     ['^', '\V}\m'],
  \     ['^', '\V)\m'],
  \     ['^', '\V]\m'],
  \     ['^', '\V>\m'],
  \   ]
  \ }
endfunction

