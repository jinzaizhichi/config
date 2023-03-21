return {
  -- buffer | statusline | icon | treeview | startup buffer
  {'goolord/alpha-nvim', config = function() require'alpha'.setup(require'alpha.themes.theta'.config) end },
  {'kyazdani42/nvim-web-devicons'},
  {'folke/todo-comments.nvim', config = true},
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      local lazy_status = require('lazy.status')
      require('lualine').setup({
        options = {
          icons_enabled = true,
          theme = 'auto',
          -- component_separators = { left = '', right = '' },
          -- component_separators = { left = '', right = '' },
          -- section_separators = { left = '', right = '' },
          component_separators = { left = '│', right = '│' },
          section_separators = { left = '', right = '' },
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = false,
          refresh = {
            statusline = 500,
            tabline = 1000,
            winbar = 1000,
          }
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch', 'diff', 'diagnostics' },
          lualine_c = { 'filename', "require'lsp-status'.status()" },
          lualine_x = { {
            lazy_status.updates,
            cond = lazy_status.has_updates,
          }, 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' }
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { 'filename' },
          lualine_x = { 'location' },
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {
          lualine_a = {
            {
              'buffers',
              mode = 2,
              show_filename_only = true,
              hide_filename_extension = false
            }
          },
          lualine_b = {},
          lualine_c = {},
          lualine_x = { 'windows' },
          lualine_y = { 'tabs' },
          lualine_z = {}
        },
        winbar = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = {}
        },
        inactive_winbar = {},
        extensions = {
          'quickfix',
          'man',
          'toggleterm',
        }
      })
    end
  },
  {
    'chentoast/marks.nvim',
    config = function()
      require 'marks'.setup({
        -- whether to map keybinds or not. default true
        default_mappings = true,
        -- which builtin marks to show. default {}
        builtin_marks = { ".", "<", ">", "^" },
        -- whether movements cycle back to the beginning/end of buffer. default true
        cyclic = true,
        -- whether the shada file is updated after modifying uppercase marks. default false
        force_write_shada = false,
        -- how often (in ms) to redraw signs/recompute mark positions.
        -- higher values will have better performance but may cause visual lag,
        -- while lower values may cause performance penalties. default 150.
        refresh_interval = 250,
        -- sign priorities for each type of mark - builtin marks, uppercase marks, lowercase
        -- marks, and bookmarks.
        -- can be either a table with all/none of the keys, or a single number, in which case
        -- the priority applies to all marks.
        -- default 10.
        sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },
        -- disables mark tracking for specific filetypes. default {}
        excluded_filetypes = {
          'null-ls-info',
          'TelescopePrompt',
          'rnvimr',
          'toggleterm',
          'dap-repl',
          'dap-float',
          'Term',
          'lazygit',
          'lspinfo',
          'translator',
          'translatorborder',
          'translator_history',
          'glowpreview',
          'help',
          'zsh',
          'lazy',
          ''
        },
        mappings = {}
        -- marks.nvim allows you to configure up to 10 bookmark groups, each with its own
        -- sign/virttext. Bookmarks can be used to group together positions and quickly move
        -- across multiple buffers. default sign is '!@#$%^&*()' (from 0 to 9), and
        -- default virt_text is "".
        -- bookmark_0 = {
        --   sign = "⚑",
        --   virt_text = "hello world"
        -- },
      })
    end
  },
  {
  'akinsho/nvim-toggleterm.lua',
  config = function()
    local get_height = function()
      return math.floor(vim.o.lines * 0.80 + 2)
    end
    local get_width = function()
      return math.floor(vim.o.columns * 0.80 - 1)
    end
    require('toggleterm').setup({
      -- size can be a number or function which is passed the current terminal
      size = get_height,
      open_mapping = [[<c-\><c-\>]],
      hide_numbers = true,    -- hide the number column in toggleterm buffers
      shade_terminals = false,
      shading_factor = 3,     -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
      start_in_insert = true,
      insert_mappings = true, -- whether or not the open mapping applies in insert mode
      autochdir = true,       -- when neovim changes it current directory the terminal will change it's own when next it's opened
      terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
      -- persist_size = true,
      direction = 'float',
      close_on_exit = true, -- close the terminal window when the process exits
      shell = vim.o.shell, -- change the default shell
      float_opts = {
        border = 'none',
        width = get_width,
        height = get_height
      },
      highlights = {
        -- highlights which map to a highlight group name and a table of it's values
        -- NOTE: this is only a subset of values, any group placed here will be set for the terminal window split
        Normal = {
          link = 'Pmenu'
        },
        NormalFloat = {
          link = 'Pmenu'
        },
        -- FloatBorder = {
        --   link = 'Pmenu'
        -- },
      },
    })
  end
}
}