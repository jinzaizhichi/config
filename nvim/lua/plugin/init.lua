return {
  -- base plugin
  {'nvim-lua/plenary.nvim'},
  -- I forgot what plugin require this
  -- {'nvim-lua/popup.nvim'},
  -- theme and color
  {'Mofiqul/vscode.nvim', lazy = false, priority = 1000},
  {'NvChad/nvim-colorizer.lua', config = true},
  -- buffer | statusline | icon | treeview | startup buffer
  {'goolord/alpha-nvim', config = function() require'alpha'.setup(require'alpha.themes.theta'.config) end },
  {'kevinhwang91/rnvimr'},
  -- remote develop
  {'miversen33/netman.nvim'},
  -- status line
  {'kyazdani42/nvim-web-devicons'},
  -- editing
  -- {'tpope/vim-surround'},
  {'kylechui/nvim-surround'},
  -- translator
  -- {'b3nj5m1n/kommentary', config = require('plugin.kommentary')},
  {'folke/todo-comments.nvim', config = true},
  -- db manage
  {'tpope/vim-dadbod'},
  {'kristijanhusak/vim-dadbod-ui'},
  -- powerful replace tool
  {'windwp/nvim-spectre'},
  -- fuzzy finder
  {'rmagatti/auto-session', config = require('plugin.auto-session')},
  -- motion
  {'phaazon/hop.nvim', config = true},
  {'rhysd/clever-f.vim'},
  -- rest client
  {'NTBBloodbath/rest.nvim', config = true},
  -- markdown preview
  {'ellisonleao/glow.nvim'},
  -- lsp auto completion & snip
  -- neovim in browser
  {'glacambre/firenvim', build = function() vim.fn['firenvim#install'](0) end},
  -- nvim debug tool
  -- which keys
  -- lsp setup
  {'nvim-lua/lsp-status.nvim'},
  {'onsails/lspkind.nvim'},
  -- enhancement for jdtls
  {'mfussenegger/nvim-jdtls'}
}
