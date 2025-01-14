return {
  -- rest client
  {
    'NTBBloodbath/rest.nvim',
    cond = not vim.g.vscode,
    config = true
  },
  {
    'nvim-orgmode/orgmode',
    cond = not vim.g.vscode,
    config = function()
      require('orgmode').setup_ts_grammar()
      require('orgmode').setup({
        org_agenda_files = { '~/project/my/archive/org/*' },
        org_default_notes_file = '~/project/my/archive/org/refile.org',
        win_border = 'none',
      })
    end
  },
  -- markdown preview
  {
    'iamcco/markdown-preview.nvim',
    build = function() vim.fn['mkdp#util#install']() end,
    cond = not vim.g.vscode,
    ft = 'markdown',
    config = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end
  },
  -- neovim in browser
  {
    'glacambre/firenvim',
    cond = not vim.g.vscode,
    build = function() vim.fn['firenvim#install'](0) end
  },
  -- db manage
  {
    'tpope/vim-dadbod',
    cond = not vim.g.vscode
  },
  {
    'kristijanhusak/vim-dadbod-ui',
    cond = not vim.g.vscode
  },
  -- powerful replace tool
  {
    'windwp/nvim-spectre',
    cond = not vim.g.vscode
  },
  -- remote develop
  {
    'miversen33/netman.nvim',
    cond = not vim.g.vscode,
    config = function() require('netman') end
  },
  {
    'uga-rosa/translate.nvim',
    cond = not vim.g.vscode,
    config = function()
      local default_command = 'google'
      -- if vim.fn.executable('trans') then
      --   default_command = 'translate_shell'
      -- end
      require('translate').setup({
        default = {
          command = default_command
        },
        preset = {
          output = {
            floating = {
              border = 'none'
            }
          }
        }
      })
    end
  },
  {
    'folke/which-key.nvim',
    cond = not vim.g.vscode,
    config = function()
      require('which-key').setup()
      local wk = require('which-key')
      wk.register({
        f = {
          name = 'Telescope Finder',
          i = { name = 'BuildIn | Reloader' },
          m = { name = 'Mark' },
          h = { name = 'History | Help | Highlight' },
          w = { name = 'Workspace | LSP Action' },
          s = { name = 'Spectre' },
        },
        c = { name = 'Code' },
        d = { name = 'DAP' },
        o = { name = 'Orgmode' },
        m = { name = 'Markdown | Format | Marks' },
        r = { name = 'Rename | Rest' },
        s = { name = 'Source | Session' },
        t = { name = 'Translate' },
        w = { name = 'Workspace' },
        g = { name = 'Git' }
      }, { prefix = '<leader>' })
    end
  },
  {
    'rmagatti/auto-session',
    cond = not vim.g.vscode,
    config = function()
      local function shutdown_term()
        local terms = require('toggleterm.terminal')
        local terminals = terms.get_all()
        for _, terminal in pairs(terminals) do
          terminal:shutdown()
        end
      end
      require('auto-session').setup({
        bypass_session_save_file_types = { 'alpha', 'dashboard', 'lazy', 'mason' },
        auto_session_suppress_dirs = { '~/', '/', '~/Desktop/', '~/Music/', '~/Public/', '~/Videos/', '~/Pictures/',
          '~/project/', '~/Documents/', '~/Downloads/', '~/Templates/' },
        auto_restore_enabled = true,
        auto_save_enabled = true,
        auto_session_use_git_branch = true,
        pre_save_cmds = { shutdown_term }
      })
    end
  }
}
