vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- Set tab to be 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.wo.number = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("ivoslovacek/remap")
require("lazy").setup("ivoslovacek.plugins")
require("nvim-web-devicons")
require("ivoslovacek.configs.lualine")
require("ivoslovacek.configs.lspzero")
-- load colorscheme
require("catppuccin").setup({
	flavour = "frappe"
})
vim.cmd.colorscheme("catppuccin-frappe")
