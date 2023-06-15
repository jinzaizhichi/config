return {
  -- rest client
  {'NTBBloodbath/rest.nvim', cond = not vim.g.vscode, config = true},
  -- markdown preview
  {'ellisonleao/glow.nvim', cond = not vim.g.vscode, config = true, cmd = 'Glow'},
  -- neovim in browser
  {'glacambre/firenvim', cond = not vim.g.vscode, build = function() vim.fn['firenvim#install'](0) end},
  -- db manage
  {'tpope/vim-dadbod', cond = not vim.g.vscode},
  {'kristijanhusak/vim-dadbod-ui', cond = not vim.g.vscode},
  -- powerful replace tool
  {'windwp/nvim-spectre', cond = not vim.g.vscode},
  -- remote develop
  {'miversen33/netman.nvim', cond = not vim.g.vscode, config = function () require('netman') end},
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
  { 'folke/which-key.nvim',
    cond = not vim.g.vscode,
    config = function()
      require('which-key').setup()
      local wk = require('which-key')
      wk.register({
        f = {
          name = 'Find By Telescope',
          i = { name = 'BuildIn & Reloader' },
          m = { name = 'Mark' },
          h = { name = 'History & Help & Highlight' },
          t = { name = 'TreeSitter & FileTypes' },
          w = { name = 'Workspace & LSP Action' },
          s = { name = 'Spectre' },
        },
        b = { name = 'Buffer Operate' },
        c = { name = 'Code Action' },
        j = { name = 'Java Action' },
        d = { name = 'DAP Action' },
        x = { name = 'Close Current Buffer' },
        m = { name = 'Markdown & Format' },
        r = { name = 'Ranger & Rename & Rest' },
        s = { name = 'Source & Session' },
        t = { name = 'Translate' },
        w = { name = 'Workspace' },
        p = { name = 'Paste to System Clipboard' },
        g = { name = 'Git Action' }
      }, { prefix = '<leader>' })
    end
  },
  {
  'rmagatti/auto-session',
  cond = not vim.g.vscode,
  config = function()
    require('auto-session').setup({
      bypass_session_save_file_types = { 'alpha', 'dashboard' },
      auto_session_suppress_dirs = { '~/', '/', '~/Desktop/', '~/Music/', '~/Public/', '~/Videos/', '~/Pictures/',
        '~/project/', '~/Documents/', '~/Downloads/', '~/Templates/' },
      auto_restore_enabled = false,
      auto_session_use_git_branch = true
    })
  end
}
}
