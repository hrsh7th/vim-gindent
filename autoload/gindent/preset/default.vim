function! gindent#preset#default#get() abort
  return {
  \   'indentkeys': [
  \     '}',
  \     ']',
  \     ')',
  \     '>',
  \   ],
  \   'manual_patterns': [
  \     { 'curr': ['^', '\V*\m'], 'func': function('gindent#misc#doc_comment') },
  \   ],
  \   'indent_patterns': [
  \     { 'prev': ['\V{\m', '$'] },
  \     { 'prev': ['\V(\m', '$'] },
  \     { 'prev': ['\V[\m', '$'] },
  \     { 'prev': ['\V<\m', '[^>]\{-}', '$'] },
  \   ],
  \   'dedent_patterns': [
  \     { 'curr': ['^', '\V}\m', ',\?'] },
  \     { 'curr': ['^', '\V)\m', ',\?'] },
  \     { 'curr': ['^', '\V]\m', ',\?'] },
  \     { 'curr': ['^', '\V>\m', ',\?'] },
  \   ]
  \ }
endfunction

