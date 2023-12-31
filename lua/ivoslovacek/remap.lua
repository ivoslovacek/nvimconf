vim.g.mapleader = " "

-- buffer switching using barbar
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<Tab>", "<Cmd>BufferNext<CR>", { desc = "Switch to next buffer" })
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", { desc = "Switch to previous buffer" })
vim.keymap.set("n", "<leader>bw", "<Cmd>BufferClose<CR>", opts, { desc = "Close current buffer" })

-- moving text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected text up a line" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected text down a line" })
vim.keymap.set("x", "<leader>p", "\"_dp", { desc = "Keep pasted text in register" })

-- copying text
vim.keymap.set("n", "<leader>y", "\"+y", { desc = "Yank text to system clipboard" })
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = "Yank line to system clipboard" })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = "Yank text to system clipboard" })

-- nvimtree
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeFocus, { desc = "Open and focus NvimTree" })
vim.keymap.set("n", "<leader>pc", vim.cmd.NvimTreeClose, { desc = "Close NvimTree" })

-- telescope
vim.keymap.set('n', '<leader>ff', function() require('telescope.builtin').find_files() end, {})
vim.keymap.set('n', '<leader>fg', function() require('telescope.builtin').live_grep() end, {})
vim.keymap.set('n', '<leader>fb', function() require('telescope.builtin').buffers() end, {})
vim.keymap.set('n', '<leader>fh', function() require('telescope.builtin').help_tags() end, {})

-- gitblame
vim.keymap.set('n', '<leader>bl', '<cmd>ToggleBlame virtual<CR>', { desc = "Toggle git blame visibility" })
