call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.

Plug 'mfussenegger/nvim-jdtls'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"red theme
Plug 'rakr/vim-one'

"gruvbox theme
Plug 'morhetz/gruvbox'

call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

" disable copilot by default
let g:copilot#enabled = 0


lua package.path = package.path .. ';~/.config/nvim/lua/?.lua'
" import lua plugins
lua require('altInit')
