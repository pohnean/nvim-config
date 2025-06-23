return {
  'nvim-treesitter/nvim-treesitter',
  opts = function(_, opts)
    opts.textobjects = opts.textobjects or {}
    opts.textobjects.select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
      },
    }
  end,
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
}
