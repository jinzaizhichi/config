vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- base plugin
  use {'wbthomason/packer.nvim'}
  use {'nvim-lua/plenary.nvim'}
  use {'nvim-lua/popup.nvim'}
  -- theme and color
  use {'Mofiqul/vscode.nvim'}
  use {'NvChad/nvim-colorizer.lua', config = function() require('colorizer').setup() end}
  -- buffer | statusline | icon | treeview | startup buffer
  -- use {'glepnir/dashboard-nvim'}
  use {'goolord/alpha-nvim', config = function() require('alpha').setup(require'alpha.themes.theta'.config) end}
  use {'kevinhwang91/rnvimr'}
  -- use {'famiu/bufdelete.nvim'}
  -- fix CursorHold event performance see: https://github.com/neovim/neovim/issues/12587
  use {'antoinemadec/FixCursorHold.nvim'}
  -- session manager
  -- use {'rmagatti/auto-session', config = require('plugin.auto-session')}
  -- use {'rmagatti/session-lens', config = function() require('session-lens').setup() end}
  use {'kyazdani42/nvim-web-devicons'}
  use {'akinsho/nvim-bufferline.lua', config = require('plugin.bufferline')}
  use {'nvim-lualine/lualine.nvim', config = require('plugin.lualine')}
  -- treesitter and treesitter base plug
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = require('plugin.treesitter')}
  use {'nvim-treesitter/nvim-treesitter-textobjects'}
  use {'JoosepAlviste/nvim-ts-context-commentstring'}
  use {'p00f/nvim-ts-rainbow'}
  use {'windwp/nvim-ts-autotag'}
  use {'windwp/nvim-autopairs', config = require('plugin.autopairs')}
  -- editing
  -- use {'tpope/vim-surround'}
  use {'kylechui/nvim-surround', config = function() require('nvim-surround').setup() end}
  use {'mbbill/undotree'}
  -- better marks
  use {'chentoast/marks.nvim', config = require('plugin.marks')}
  -- git
  use {'lewis6991/gitsigns.nvim', config = require('plugin.gitsigns')}
  -- translator
  use {'uga-rosa/translate.nvim', config = require('plugin.translate')}
  -- comment
  use {'numToStr/Comment.nvim', config = function () require('Comment').setup() end}
  -- use {'b3nj5m1n/kommentary', config = require('plugin.kommentary')}
  use {'folke/todo-comments.nvim', config = function() require('todo-comments').setup() end}
  -- db manage
  use {'tpope/vim-dadbod'}
  use {'kristijanhusak/vim-dadbod-ui'}
  -- terminal
  use {'akinsho/nvim-toggleterm.lua', config = require('plugin.toggleterm')}
  -- powerful replace tool
  use {'windwp/nvim-spectre'}
  -- fuzzy finder
  use {'sudormrfbin/cheatsheet.nvim'}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {'nvim-telescope/telescope-dap.nvim'}
  use {'nvim-telescope/telescope-ui-select.nvim'}
  use {'nvim-telescope/telescope-live-grep-args.nvim'}
  use {'nvim-telescope/telescope.nvim', config = require('plugin.telescope')}
  -- motion
  use {'phaazon/hop.nvim', config = function() require('hop').setup() end}
  use {'rhysd/clever-f.vim'}
  -- rest client
  use {'NTBBloodbath/rest.nvim', config = function() require('rest-nvim').setup() end}
  -- project manager
  use {'ahmedkhalf/project.nvim', config = require('plugin.project')}
  -- markdown preview
  use {'ellisonleao/glow.nvim'}
  -- lsp auto completion & snip
  use {'rafamadriz/friendly-snippets'}
  use {'hrsh7th/vim-vsnip'}
  use {'hrsh7th/vim-vsnip-integ'}
  use {'hrsh7th/cmp-vsnip'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'hrsh7th/cmp-nvim-lsp-signature-help'}
  use {'hrsh7th/cmp-nvim-lsp-document-symbol'}
  use {'octaltree/cmp-look'}
  use {'petertriho/cmp-git'}
  -- use {'tzachar/cmp-tabnine', run='./install.sh'}
  use {'kristijanhusak/vim-dadbod-completion'}
  use {'hrsh7th/nvim-cmp', config = require('plugin.cmp')}
  -- use neovim in browser
  use {'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end}
  -- nvim debug tool
  use {'mfussenegger/nvim-dap'}
  use {'theHamsta/nvim-dap-virtual-text', config = require('plugin.nvim-dap-virtual-text')}
  -- which keys
  use {'folke/which-key.nvim', config = require('plugin.which-key')}
  -- lsp setup
  use {'SmiteshP/nvim-navic'}
  use {'williamboman/mason.nvim'}
  use {'williamboman/mason-lspconfig.nvim'}
  use {'neovim/nvim-lspconfig', config = require('plugin.lspconfig')}
  use {'onsails/lspkind.nvim'}
  use {'jose-elias-alvarez/null-ls.nvim', config = require('plugin.null-ls')}
  -- wrapper for jdtls
  use {'mfussenegger/nvim-jdtls'}
end)
