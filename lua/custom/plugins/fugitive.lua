return {
  'tpope/vim-fugitive',
  cmd = { 'Git', 'G', 'Gblame', 'Gdiffsplit', 'Gvdiffsplit' },
  keys = {
    { '<leader>gB', '<cmd>Git blame<cr>', desc = '[g]it [B]lame (full file)' },
  },
}
