return {
  'folke/snacks.nvim',
  ---@type snacks.Config
  opts = {
    lazygit = {
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
    {
      '<leader>bd',
      function()
        Snacks.bufdelete()
      end,
      desc = 'Delete Buffer',
    },
    {
      '<leader>bo',
      function()
        Snacks.bufdelete.other()
      end,
      desc = 'Delete Other Buffers',
    },
  },
}
