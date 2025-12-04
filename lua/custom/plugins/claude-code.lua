return {
  'greggh/claude-code.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('claude-code').setup {
      window = {
        -- position = 'float',
        -- float = {
        --   width = '80%',
        --   height = '80%',
        --   border = 'rounded',
        -- },
      },
      keymaps = {
        toggle = {
          normal = '<leader>ac',
          terminal = '<leader>ac',
        },
      },
    }
  end,
}
