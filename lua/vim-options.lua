-- Basic Vim Settings
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")

-- custom keybinds
-- Open window and move cursor
-- vim.keymap.set('n', '<C-s>', '<Cmd>:vsplit<CR><C-w><C-w>', { silent = true })
vim.keymap.set('n', '<C-s>', '<Cmd>:vsplit<CR><C-w><C-w><Cmd>Telescope find_files<CR>', {})

-- setting default colorschemes
--vim.cmd.colorscheme "catppuccin-frappe"
--vim.cmd.colorscheme "catppuccin-mocha"
--vim.cmd.colorscheme "catppuccin-macchiato"
--vim.cmd.colorscheme "catppuccin-latte"
vim.cmd.colorscheme "tokyonight"
--vim.cmd.colorscheme "tokyodark"
--vim.cmd.colorscheme "moonlight"
--vim.cmd.colorscheme "rose-pine"
--vim.cmd.colorscheme "nord"
--vim.cmd.colorscheme "cyberdream"
--vim.cmd.colorscheme "poimandres"
