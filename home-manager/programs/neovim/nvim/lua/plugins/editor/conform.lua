return {
  'stevearc/conform.nvim',
  event = 'BufWritePre',
  config = function()
    local conform = require 'conform'

    conform.formatters.ruff_format = {
      prepend_args = { 'format', '--config', '~/.config/nvim/ruff.toml' },
    }

    conform.setup {
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'ruff_organize_imports', 'ruff_format', 'ruff_fix' },
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        json = { 'jq' },
        html = { 'prettier' },
        css = { 'prettier' },
        sh = { 'shfmt' },
        yaml = { 'prettier' },
        markdown = { 'prettier' },
        toml = { 'taplo' },
        dockerfile = { 'hadolint' },
        nix = { 'nixfmt' },
      },
      format_on_save = {
        timeout_ms = 100,
        lsp_fallback = true,
      },
    }
  end,
}