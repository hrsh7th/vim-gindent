function! gindent#preset#vim#get() abort
  return gindent#preset#extend(gindent#preset#default#get(), {
  \   'indentkeys': [
  \     'end',
  \     'End',
  \     '\',
  \   ],
  \   'manual_patterns': [
  \     { 'curr': ['^', '\'], 'func': { ctx -> ctx.prev_indent_count + g:vim_indent_cont } },
  \     { 'curr': ['^', '\w\+', '$'], 'curr_syntax': ['vimEmbedError', '@endmarker'], 'func': { ctx -> 0 } },
  \   ],
  \   'continue_patterns': [
  \     { 'prev': ['^', '\w\+', '$'], 'prev': ['vimEmbedError', '@endmarker'] },
  \   ],
  \   'indent_patterns': [
  \     { 'prev': ['^', '\<if\>'] },
  \     { 'prev': ['^', '\<else\>'] },
  \     { 'prev': ['^', '\<elseif\>'] },
  \     { 'prev': ['^', '\<while\>'] },
  \     { 'prev': ['^', '\<for\>'] },
  \     { 'prev': ['^', '\<function\>'] },
  \     { 'prev': ['^', '\<augroup\>'], 'prev!': ['END', '$'] },
  \     { 'prev': ['^', '\<try\>'] },
  \     { 'prev': ['^', '\<cat\%[ch]\>'] },
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
  \     { 'curr': ['^', '\<cat\%[ch]\>'] },
  \     { 'curr': ['^', '\<endt\%[ry]\>'] },
  \     { 'curr': ['^', '\<End\>'] },
  \   ]
  \ })
endfunction

