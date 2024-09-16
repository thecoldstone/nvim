-- Highlight, edit, and navigate code
return {
 {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
   ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
   auto_install = true,
   highlight = {
    enable = true,
   },
   indent = { enable = true },
  },
  config = function(_, opts)
   -- [[ Configure Treesitter ]] See `:help nvim-treesitter`	  
   ---@diagnostic disable-next-line: missing-fields	  
   require('nvim-treesitter.configs').setup(opts)
    -- Setup parser configs for cds
    ---@class ParserInfo
    ---@field parser_config ParserInfo
    local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
    parser_config.cds = {
      install_info = {
	url = 'https://github.com/cap-js-community/tree-sitter-cds.git',
	files = { 'src/parser.c', 'src/scanner.c' },
	branch = 'main',
	generate_requires_npm = false,
	requires_generate_from_grammar = false,
      },
      filetype = 'cds',
      used_by = { 'cdl', 'hdbcds' },
    }

    vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
      pattern = { '*.cds' },
      command = 'set filetype=cds',
    })
  end,
 }
}
