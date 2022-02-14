function! gindent#preset#vim#get() abort
  return {
  \   'indent_patterns': [
  \     '^\s*\<if\>',
  \     '^\s*\<else\>',
  \     '^\s*\<elseif\>',
  \     '^\s*\<while\>',
  \     '^\s*\<for\>',
  \     '^\s*\<function\>',
  \     '^\s*\<augroup\>',
  \     '{\s*$',
  \     '(\s*$',
  \     '[\s*$',
  \     '<\s*$',
  \   ],
  \   'dedent_patterns': [
  \     '^\s*\<end\%[if]\>',
  \     '^\s*\<end\%[while]\>',
  \     '^\s*\<end\%[for]\>',
  \     '^\s*\<end\%[function]\>',
  \     '^\s*\<augroup END\>',
  \     '^\s*}',
  \     '^\s*)',
  \     '^\s*]',
  \     '^\s*>',
  \   ]
  \ }
endfunction

