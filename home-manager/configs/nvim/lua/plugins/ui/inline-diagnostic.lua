return {
  'rachartier/tiny-inline-diagnostic.nvim',
  event = 'LspAttach',
  disable = true,
  enabled = false,
  priority = 100,
  config = function()
    require('tiny-inline-diagnostic').setup {
      options = {
        preset = 'simple',
        show_source = true,
        use_icons_from_diagnostic = true,
        multilines = {
          enabled = true,
          always_show = false,
        },
        show_all_diags_on_cursorline = true,
      },
    }
  end,
}
