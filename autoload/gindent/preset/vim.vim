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
  \     '^\s*\<en\%[dif]\>',
  \     '^\s*\<endw\%[hile]\>',
  \     '^\s*\<endfo\%[r]\>',
  \     '^\s*\<endf\%[unction]\>',
  \     '^\s*\<augroup END\>',
  \     '^\s*\<else\>',
  \     '^\s*\<elseif\>',
  \     '^\s*}',
  \     '^\s*)',
  \     '^\s*]',
  \     '^\s*>',
  \   ]
  \ }
endfunction

