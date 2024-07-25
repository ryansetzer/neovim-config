return {
  {
    "williamboman/mason.nvim" ,
    config = function ()
      require("mason").setup()
    end
  } ,
  {
    "williamboman/mason-lspconfig.nvim" ,
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "bashls" ,                    -- bash
          "clangd" ,                    -- c
          "cssls" ,                     -- css
          "html" ,                      -- html
          "tsserver" ,                  -- javascript/typescript
          "lua_ls" ,                    -- lua
          "pyright" ,                   -- python
          "ruby_lsp" ,                  -- ruby
          "rust_analyzer" ,             -- rust
        }
      })
    end
  } ,
  {
    "neovim/nvim-lspconfig" ,
    config = function()
      local lspconfig = require("lspconfig")
      -- languages
      lspconfig.bashls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.cssls.setup({})
      lspconfig.java_language_server.setup({})
      lspconfig.html.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.pyright.setup({})
      lspconfig.ruby_lsp.setup({})
      lspconfig.rust_analyzer.setup({})
      -- keybinds
      vim.keymap.set("n" , "K" , vim.lsp.buf.hover , {})
      vim.keymap.set({ "n" , "v" } , "F" , vim.lsp.buf.code_action , {})
    end
  } ,
}
