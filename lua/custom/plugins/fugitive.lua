return {
  'tpope/vim-fugitive',
  cmd = { 'Git', 'G', 'Gblame', 'Gdiffsplit', 'Gvdiffsplit' },
  keys = {
    { '<leader>gB', '<cmd>Git blame<cr>', desc = '[g]it [B]lame (full file)' },
    { '<leader>gl', '<cmd>Git log --oneline %<cr>', mode = 'n', desc = '[g]it [l]og current file' },
    {
      '<leader>gl',
      function()
        local start_line = vim.fn.line 'v'
        local end_line = vim.fn.line '.'
        if start_line > end_line then
          start_line, end_line = end_line, start_line
        end
        vim.cmd('Git log -L ' .. start_line .. ',' .. end_line .. ':%')
      end,
      mode = 'v',
      desc = '[g]it [l]og selected lines',
    },
  },
}
