function! gindent#preset#lua#get() abort
  return {
  \   'indent_patterns': [
  \     '^\s*\<if\>.\{-}\<then\>',
  \     '^\s*\<for\>.\{-}\<do\>',
  \     '^\s*\<while\>.\{-}\<do\>',
  \     '\<function\>(.\{-})\s*$',
  \     '\<function\> \w\+\%(\.\w\+\)\?(.\{-})\s*$',
  \     '{\s*$',
  \     '(\s*$',
  \     '[\s*$',
  \     '<\s*$',
  \   ],
  \   'dedent_patterns': [
  \     '^\s*\<end\>',
  \     '^\s*}',
  \     '^\s*)',
  \     '^\s*]',
  \     '^\s*>',
  \   ]
  \ }
endfunction


