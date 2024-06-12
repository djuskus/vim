" Define a function to set cool mode options with a parameter
function! SetCoolMode(column_length)
  " Set text width to the specified column length
  let l:col_len = a:column_length
  execute 'setlocal textwidth=' . l:col_len

  " Highlight the column after the text width limit
  execute 'setlocal colorcolumn=+' . l:col_len

  " Enable line wrapping and line break at word boundaries
  setlocal wrap
  setlocal linebreak

  " Customize the color of the margin column
  highlight ColorColumn ctermbg=lightblue

  " Reformat existing text in the buffer to adhere to textwidth
  normal! ggVGgq
endfunction

" Define a function to unset cool mode options
function! UnsetCoolMode()
  " Reset text width
  setlocal textwidth=0

  " Remove the colorcolumn highlight
  setlocal colorcolumn=

  " Disable line wrapping and line break at word boundaries
  setlocal nowrap
  setlocal nolinebreak

  " Clear the ColorColumn highlight
  highlight clear ColorColumn

  " Remove horizontal lines (if any were added)
  call clearmatches()
endfunction

" Create a custom highlight group for color column
highlight ColorColumn ctermbg=lightblue guibg=lightblue

" Create a command to activate cool mode with a parameter
command! -nargs=1 CoolMode call SetCoolMode(<args>)

" Create a command to deactivate cool mode
command! UnCoolMode call UnsetCoolMode()
