if exists('g:loaded_gindent')
  finish
end
let g:loaded_gindent = v:true

let g:gindent = get(g:, 'gindent', {})
let g:gindent.enabled = get(g:gindent, 'enabled', { -> v:false })

augroup gindent
  autocmd!
  autocmd FileType * call gindent#apply()
augroup END

call gindent#register_preset('vim', gindent#preset#vim#get())
call gindent#register_preset('lua', gindent#preset#lua#get())

