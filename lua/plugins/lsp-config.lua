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
          "ast_grep",                   -- rust
          "bashls" ,                    -- bash
          "clangd" ,                    -- c
          "cssls" ,                     -- css
          "harper_ls",                  -- rust
          "html" ,                      -- html
          "lua_ls" ,                    -- lua
          "pyright" ,                   -- python
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
      lspconfig.ast_grep.setup({})
      lspconfig.bashls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.cssls.setup({})
      lspconfig.harper.setup({})
      lspconfig.html.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.pyright.setup({})
      lspconfig.rust_analyzer.setup({})
      -- keybinds
      vim.keymap.set("n" , "K" , vim.lsp.buf.hover , {})
      vim.keymap.set({ "n" , "v" } , "F" , vim.lsp.buf.code_action , {})
    end
  } ,
}
