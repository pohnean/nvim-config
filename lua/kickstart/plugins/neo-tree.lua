-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree toggle float reveal_force_cwd<cr>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      -- find_command = 'fd',
      -- find_args = {
      --   '--exclude',
      --   '.ignore',
      --   '--hidden',
      --   '--no-ignore', -- Don't use .ignore files, but still respects .gitignore
      -- },
      filtered_items = {
        respect_gitignore = true,
        hide_dotfiles = false,
        hide_gitignored = false, -- Dim but don't hide gitignored files
        ignore_files = {
          '.gitignore',
        },
      },
      hijack_netrw_behavior = 'disabled',
      window = {
        position = 'float',
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
