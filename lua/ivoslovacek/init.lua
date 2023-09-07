require("ivoslovacek.sets")

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
require("autoclose").setup()
vim.cmd.colorscheme("catppuccin-frappe")
