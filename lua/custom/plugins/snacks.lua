return {
  'folke/snacks.nvim',
  ---@type snacks.Config
  opts = {
    terminal = {
      -- your terminal configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  keys = {
    {
      '<leader>gg',
      function()
        Snacks.terminal { 'lazygit' }
      end,
      desc = 'Lazygit (cwd)',
    },
  },
}
