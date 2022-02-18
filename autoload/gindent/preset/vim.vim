function! gindent#preset#vim#get() abort
  return {
  \   'indent_patterns': [
  \     { 'prev': ['^', '\<if\>'] },
  \     { 'prev': ['^', '\<else\>'] },
  \     { 'prev': ['^', '\<elseif\>'] },
  \     { 'prev': ['^', '\<while\>'] },
  \     { 'prev': ['^', '\<for\>'] },
  \     { 'prev': ['^', '\<function\>'] },
  \     { 'prev': ['^', '\<augroup\>'] },
  \   ],
  \   'dedent_patterns': [
  \     { 'curr': ['^', '\<en\%[dif]\>'] },
  \     { 'curr': ['^', '\<endw\%[hile]\>'] },
  \     { 'curr': ['^', '\<endfo\%[r]\>'] },
  \     { 'curr': ['^', '\<endf\%[unction]\>'] },
  \     { 'curr': ['^', '\<augroup END\>'] },
  \     { 'curr': ['^', '\<else\>'] },
  \     { 'curr': ['^', '\<elseif\>'] },
  \   ]
  \ }
endfunction

