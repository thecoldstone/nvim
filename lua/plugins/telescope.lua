return {
 {
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  dependencies = {
   'nvim-lua/plenary.nvim',
   {
    'nvim-telescope/telescope-fzf-native.nvim',
    -- `build` is used to run some command when the plugin in installed/updated.
    build = 'make',

    -- `cond` is a condition used to determine whether this plugin should be 
    -- installed and loaded.
    cond = function()
     return vim.fn.executable 'make' == 1
    end,
   },
   { 'nvim-telescope/telescope-ui-select.nvim' },

   -- Useful for getting pretty icons, but requires a Nerd Font.
   {
    'nvim-tree/nvim-web-devicons',
    enabled = vim.g.have_nerd_font
   },
  },
  config = function()
   require('telescope').setup {
    extensions = {
     ['ui-select'] = {
      require('telescope.themes').get_dropdown(),
     },
    },
   }

   -- Enable Telescope extensions if they are installed
   pcall(require('telescope').load_extension, 'fzf')
   pcall(require('telescope').load_extension, 'ui-select')

   -- See `:help telescope.builtin`
   local builtin = require 'telescope.builtin'
   vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
   vim.keymap.set('n', '<leader>sG', builtin.live_grep, { desc = '[S]earch by [G]rep' })
   vim.keymap.set('n', '<leader>sg', builtin.git_status, { desc = '[S]earch by git status' })
   vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent File ("." for repeat)' })
  end,
 }
}
