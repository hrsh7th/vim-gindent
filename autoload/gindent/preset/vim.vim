function! gindent#preset#vim#get() abort
  return {
  \   'indent_patterns': [
  \     ['^', '\<if\>'],
  \     ['^', '\<else\>'],
  \     ['^', '\<elseif\>'],
  \     ['^', '\<while\>'],
  \     ['^', '\<for\>'],
  \     ['^', '\<function\>'],
  \     ['^', '\<augroup\>'],
  \     ['\V{\m', '$'],
  \     ['\V(\m', '$'],
  \     ['\V[\m', '$'],
  \     ['\V<\m', '$'],
  \   ],
  \   'dedent_patterns': [
  \     ['^', '\<en\%[dif]\>'],
  \     ['^', '\<endw\%[hile]\>'],
  \     ['^', '\<endfo\%[r]\>'],
  \     ['^', '\<endf\%[unction]\>'],
  \     ['^', '\<augroup END\>'],
  \     ['^', '\<else\>'],
  \     ['^', '\<elseif\>'],
  \     ['^', '\V}\m'],
  \     ['^', '\V)\m'],
  \     ['^', '\V]\m'],
  \     ['^', '\V>\m'],
  \   ]
  \ }
endfunction

