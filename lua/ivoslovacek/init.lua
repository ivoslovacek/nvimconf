vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
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
require("nvim-tree").setup()
require("nvim-web-devicons")
require("catppuccin").setup({
	flavour = "frappe"
})

vim.cmd.colorscheme("catppuccin-frappe")
