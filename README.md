# vim-gindent

General indentexpr plugin for vim and nvim.

# Usage

I don't recommend enabling `vim-gindent` on all filetypes.

You should specify only for filetypes that the indentation doesn't work properly.

```
let g:gindent = {}
let g:gindent.filetypes = ['vim', 'php', ...]
```

# Note

- This plugin provides very basic indentexpr.
- This plugin supports `vim` filetype and the general language that uses `{}` / `()` / `[]` / `<>` for indentation.

