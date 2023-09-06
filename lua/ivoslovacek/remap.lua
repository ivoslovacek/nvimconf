vim.g.mapleader = " "

-- buffer switching
vim.keymap.set("n", "<Tab>", vim.cmd.bnext, {desc = "Switch to next buffer"})
vim.keymap.set("n", "<S-Tab>", vim.cmd.bprevious, {desc = "Switch to previous buffer"})

-- nvimtree
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeFocus)
vim.keymap.set("n", "<leader>pc", vim.cmd.NvimTreeClose)

-- telescope
vim.keymap.set('n', '<leader>ff', function() require('telescope.builtin').find_files() end, {})
vim.keymap.set('n', '<leader>fg', function() require('telescope.builtin').live_grep() end, {})
vim.keymap.set('n', '<leader>fb', function() require('telescope.builtin').buffers() end, {})
vim.keymap.set('n', '<leader>fh', function() require('telescope.builtin').help_tags() end, {})
