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
          "lua_ls" ,
          "tsserver" ,
          "pyright" ,
        }
      })
    end
  } ,
  {
    "neovim/nvim-lspconfig" ,
    config = function()
      local lspconfig = require("lspconfig")
      -- languages
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.pyright.setup({})
      -- keybinds
      vim.keymap.set("n" , "K" , vim.lsp.buf.hover , {})
      vim.keymap.set({ "n" , "v" } , "F" , vim.lsp.buf.code_action , {})
    end
  } ,
}
