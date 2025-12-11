-- GitHub Actions LSP configuration
-- Uses gh-actions-language-server (wrapper around @actions/languageserver)

return {
  'neovim/nvim-lspconfig',
  opts = function()
    local lspconfig = require 'lspconfig'
    local configs = require 'lspconfig.configs'

    -- Register the GitHub Actions LSP if not already registered
    if not configs.github_actions_ls then
      configs.github_actions_ls = {
        default_config = {
          cmd = { 'gh-actions-language-server', '--stdio' },
          filetypes = { 'yaml' },
          root_dir = lspconfig.util.root_pattern('.github'),
          single_file_support = false,
          settings = {},
        },
      }
    end

    -- Setup the LSP
    lspconfig.github_actions_ls.setup {
      on_attach = function(client, bufnr)
        -- Only attach to GitHub Actions workflow files
        local filename = vim.api.nvim_buf_get_name(bufnr)
        if not filename:match '%.github/workflows/' then
          vim.lsp.buf_detach_client(bufnr, client.id)
        end
      end,
    }
  end,
}
