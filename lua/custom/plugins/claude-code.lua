return {
  'coder/claudecode.nvim',
  event = 'VeryLazy',
  dependencies = { 'folke/snacks.nvim' },
  config = true,
  opts = {
    terminal = {
      provider = 'external',
      provider_opts = {
        external_terminal_cmd = 'tmux split-window -h %s',
      },
    },
  },
  keys = {
    { '<leader>a', nil, desc = 'AI/Claude Code' },
    { '<leader>ac', '<cmd>ClaudeCode<cr>', desc = 'Toggle Claude' },
    { '<leader>ab', '<cmd>ClaudeCodeAdd %<cr>', desc = 'Add buffer to Claude' },
    { '<leader>as', '<cmd>ClaudeCodeSend<cr>', mode = 'v', desc = 'Send to Claude' },
  },
}
