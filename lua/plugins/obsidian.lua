return {
 'epwalsh/obsidian.nvim',
 version = '*', -- recommended, use latest release instead of latest commit
 lazy = true,
 ft = 'markdown',
 dependencies = {
  -- Required:
  'nvim-lua/plenary.nvim',
 },
 opts = {
  workspaces = {
   {
	name = 'personal',
	path = '~/vaults/personal'
   },
   {
	name = 'work',
	path = '~/vaults/work'
   },
  }
 },
 keys = {
  { '<leader>on', '<cmd>ObsidianNew<cr>', desc = 'ObsidianNew' },
  { '<leader>os', '<cmd>ObsidianSearch<cr>', desc = 'ObsidianSearch' },
  { '<leader>ow', '<cmd>ObsidianWorkspace<cr>', desc = 'ObsidianWorkspace' },
 },
}
