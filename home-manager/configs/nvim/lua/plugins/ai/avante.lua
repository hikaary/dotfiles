return {
  'yetone/avante.nvim',
  enabled = false,
  event = 'VeryLazy',
  build = 'make BUILD_FROM_SOURCE=true',
  lazy = false,
  version = false,
  opts = {
    provider = 'o3',
    auto_suggestions_provider = 'gemini',
    vendors = {
      openrouterdeepseek = {
        __inherited_from = 'openai',
        endpoint = 'https://openrouter.ai/api/v1',
        model = 'deepseek/deepseek-chat',
        api_key_name = 'OPENROUTER_API_KEY',
        temperature = 0.2,
        max_tokens = 8192,
      },
      openrouterclaude = {
        __inherited_from = 'openai',
        endpoint = 'https://openrouter.ai/api/v1',
        model = 'anthropic/claude-3.5-sonnet',
        api_key_name = 'OPENROUTER_API_KEY',
        temperature = 0.2,
        max_tokens = 8192,
      },
      mistral = {
        __inherited_from = 'openai',
        endpoint = 'https://openrouter.ai/api/v1',
        model = 'mistralai/codestral-2501',
        api_key_name = 'OPENROUTER_API_KEY',
        temperature = 0.2,
        max_tokens = 8192,
      },
      gemini = {
        __inherited_from = 'gemini',
        endpoint = 'https://openrouter.ai/api/v1',
        model = 'google/gemini-2.0-flash-001',
        api_key_name = 'OPENROUTER_API_KEY',
        temperature = 0.2,
        max_tokens = 1000000,
      },
      o3 = {
        __inherited_from = 'openai',
        endpoint = 'https://openrouter.ai/api/v1',
        model = 'openai/o3-mini',
        api_key_name = 'OPENROUTER_API_KEY',
        temperature = 0.2,
        max_tokens = 200000,
      },
    },
    behaviour = {
      auto_suggestions = true,
      auto_set_highlight_group = true,
      auto_set_keymaps = true,
      auto_apply_diff_after_generation = true,
      support_paste_from_clipboard = true,
      minimize_diff = true,
    },
    hints = { enabled = true },
    windows = {
      position = 'right',
      wrap = true,
      width = 30,
      sidebar_header = {
        enabled = true,
        align = 'center',
        rounded = true,
      },
      input = {
        prefix = '> ',
        height = 8,
      },
      edit = {
        border = 'rounded',
        start_insert = true,
      },
      ask = {
        floating = false,
        start_insert = true,
        border = 'rounded',
        focus_on_apply = 'ours',
      },
    },
    highlights = {
      diff = {
        current = 'DiffText',
        incoming = 'DiffAdd',
      },
    },
    diff = {
      autojump = true,
      list_opener = 'copen',
      override_timeoutlen = 500,
    },
    file_selector = {
      --- @alias FileSelectorProvider "native" | "fzf" | "mini.pick" | "snacks" | "telescope" | string
      provider = 'snacks',
      -- Options override for custom providers
      provider_opts = {},
    },
  },
  dependencies = {
    'stevearc/dressing.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    {
      'MeanderingProgrammer/render-markdown.nvim',
      lazy = false,
      opts = {
        file_types = { 'markdown', 'Avante' },
      },
      ft = { 'markdown', 'Avante' },
    },
    {
      'HakonHarnes/img-clip.nvim',
      event = 'VeryLazy',
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
        },
      },
    },
    {
      'ibhagwan/fzf-lua',
      dependencies = { 'nvim-tree/nvim-web-devicons' },
      opts = {},
    },
  },
}
