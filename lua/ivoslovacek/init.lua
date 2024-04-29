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
require("autoclose").setup()
require("oil").setup()

-- load colorscheme
vim.g.gruvbox_contrast_dark = "hard"
vim.g.gruvbox_contrast_light = "hard"
vim.g.gruvbox_invert_selection = 0
vim.cmd("colorscheme gruvbox")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
