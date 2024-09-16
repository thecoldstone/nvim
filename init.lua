-- Make line numbers default
vim.opt.number = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

vim.api.nvim_create_autocmd('TextYankPost', {
 desc = 'Highlight when yanking text',
 group = vim.api.nvim_create_augroup('thecoldstone-highlight-yank', { clear = true } ),
 callback = function()
  vim.highlight.on_yank()
 end,
})

require("config.lazy")
require("config.keymaps")
