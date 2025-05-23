return {
  'mrjones2014/smart-splits.nvim',
  event = 'VimResized',
  config = function()
    require('smart-splits').setup {
      ignored_buftypes = {
        'nofile',
        'quickfix',
        'prompt',
      },
      default_amount = 3,
      at_edge = 'wrap',
      float_win_behavior = 'previous',
      move_cursor_same_row = false,
      cursor_follows_swapped_bufs = false,
      resize_mode = {
        quit_key = '<ESC>',
        resize_keys = { 'h', 'j', 'k', 'l' },
        silent = false,
        hooks = {
          on_enter = nil,
          on_leave = nil,
        },
      },
      ignored_events = {
        'BufEnter',
        'WinEnter',
      },
      multiplexer_integration = 'tmux',
      disable_multiplexer_nav_when_zoomed = true,
      log_level = 'info',
    }
  end,
}
