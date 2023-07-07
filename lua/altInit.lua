local lspconfig = require'lspconfig'

require'lspconfig'.lua_ls.setup {
  cmd = { "/home/tomas/organizeMe/langServers/lua/bin/lua-language-server" },
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}


lspconfig.tsserver.setup{}
lspconfig.tailwindcss.setup{}
lspconfig.custom_elements_ls.setup{}
lspconfig.jsonls.setup{}

