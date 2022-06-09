function! gindent#preset#vim#get() abort
  return gindent#preset#extend(gindent#preset#default#get(), {
  \   'indentkeys': [
  \     'end',
  \     'End',
  \     '\',
  \   ],
  \   'manual_patterns': [
  \     { 'curr': ['^', '\'], 'func': { ctx -> ctx.prev_indent_count + g:vim_indent_cont } }
  \   ],
  \   'indent_patterns': [
  \     { 'prev': ['^', '\<if\>'] },
  \     { 'prev': ['^', '\<else\>'] },
  \     { 'prev': ['^', '\<elseif\>'] },
  \     { 'prev': ['^', '\<while\>'] },
  \     { 'prev': ['^', '\<for\>'] },
  \     { 'prev': ['^', '\<function\>'] },
  \     { 'prev': ['^', '\<augroup\>'] },
  \     { 'prev': ['^', '\<Context\>'] },
  \     { 'prev': ['^', '\<It\>'] },
  \   ],
  \   'dedent_patterns': [
  \     { 'curr': ['^', '\<en\%[dif]\>'] },
  \     { 'curr': ['^', '\<endw\%[hile]\>'] },
  \     { 'curr': ['^', '\<endfo\%[r]\>'] },
  \     { 'curr': ['^', '\<endf\%[unction]\>'] },
  \     { 'curr': ['^', '\<augroup END\>'] },
  \     { 'curr': ['^', '\<else\>'] },
  \     { 'curr': ['^', '\<elseif\>'] },
  \     { 'curr': ['^', '\<End\>'] },
  \   ]
  \ })
endfunction

