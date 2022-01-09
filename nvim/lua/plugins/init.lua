vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- base plugin
  use {'wbthomason/packer.nvim'}
  use {'nvim-lua/plenary.nvim'}
  use {'nvim-lua/popup.nvim'}
  -- theme and color
  -- use {'tjdevries/colorbuddy.vim'}
  use {'navarasu/onedark.nvim', config = require('plugins.onedark')}
  use {'norcalli/nvim-colorizer.lua', config = function() require('colorizer').setup() end}
  -- buffer | statusline | icon | treeview | startup buffer
  use {'glepnir/dashboard-nvim'}
  use {'kevinhwang91/rnvimr'}
  -- use {'kyazdani42/nvim-tree.lua'}
  use {'kyazdani42/nvim-web-devicons'}
  use {'akinsho/nvim-bufferline.lua', config = require('plugins.bufferline')}
  -- use {'hoob3rt/lualine.nvim', config = require('plugins.lualine')}
  use {'nvim-lualine/lualine.nvim', config = require('plugins.lualine')}
  -- treesitter and treesitter base plug
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = require('plugins.treesitter')}
  use {'nvim-treesitter/nvim-treesitter-textobjects'}
  use {'nvim-treesitter/nvim-treesitter-refactor'}
  use {'JoosepAlviste/nvim-ts-context-commentstring'}
  use {'romgrk/nvim-treesitter-context', config = require('plugins.treesitter-context')}
  use {'lewis6991/spellsitter.nvim', config = require('plugins.spellsitter')}
  use {'p00f/nvim-ts-rainbow'}
  use {'windwp/nvim-ts-autotag'}
  use {'windwp/nvim-autopairs', config = require('plugins.autopairs')}
  -- editing
  use {'tpope/vim-surround'}
  use {'mhartington/formatter.nvim', config = require('plugins.formatter')}
  -- git
  use {'lewis6991/gitsigns.nvim', config = require('plugins.gitsigns')}
  use {'kdheepak/lazygit.nvim'}
  use {'sindrets/diffview.nvim', config = require('plugins.diffview')}
  -- translator
  use {'voldikss/vim-translator'}
  -- comment
  use {'b3nj5m1n/kommentary', config = require('plugins.kommentary')}
  use {'folke/todo-comments.nvim', config = function() require('todo-comments').setup() end}
  -- highlight different word at same time
  use {'lfv89/vim-interestingwords'}
  -- better marks
  -- not work well with some plug now
  -- use {'chentau/marks.nvim', config = require('plugins.marks')}
  -- db manage
  use {'tpope/vim-dadbod'}
  use {'kristijanhusak/vim-dadbod-ui'}
  -- incsearch
  use {'kevinhwang91/nvim-hlslens'}
  -- terminal
  use {'akinsho/nvim-toggleterm.lua', config = require('plugins.toggleterm')}
  -- match help
  -- use {'itchyny/vim-cursorword'}
  use {'andymass/vim-matchup'}
  -- powerful replace tool
  use {'windwp/nvim-spectre'}
  -- fuzzy finder
  use {'sudormrfbin/cheatsheet.nvim'}
  use {'nvim-telescope/telescope-hop.nvim'}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {'nvim-telescope/telescope-fzf-writer.nvim'}
  use {'nvim-telescope/telescope-dap.nvim'}
  use {'nvim-telescope/telescope.nvim', config = require('plugins.telescope')}
  -- motion
  use {'phaazon/hop.nvim', as = 'hop', config = function() require('hop').setup() end}
  use {'rhysd/clever-f.vim'}
  -- rest client
  use {'NTBBloodbath/rest.nvim', config = function() require('rest-nvim').setup() end}
  -- project manager
  use {'ahmedkhalf/project.nvim', config = require('plugins.project')}
  -- markdown preview
  use {'npxbr/glow.nvim', run = ':GlowInstall'}
  -- lsp auto completion & snip
  use {'rafamadriz/friendly-snippets'}
  use {'hrsh7th/vim-vsnip'}
  use {'hrsh7th/vim-vsnip-integ'}
  use {'hrsh7th/cmp-vsnip'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'octaltree/cmp-look'}
  -- use {'tzachar/cmp-tabnine', run='./install.sh'}
  use {'kristijanhusak/vim-dadbod-completion'}
  use {'hrsh7th/nvim-cmp', config = require('plugins.cmp')}
  -- use neovim in browser
  use {'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end}
  -- nvim debug tool
  use {'mfussenegger/nvim-dap'}
  use {'theHamsta/nvim-dap-virtual-text', config = require('plugins.nvim-dap-virtual-text')}
  use {'Pocco81/DAPInstall.nvim'}
  -- which keys
  use {'folke/which-key.nvim', config = require('plugins.which-key')}
  -- lsp setup
  use {'neovim/nvim-lspconfig'}
  use {'williamboman/nvim-lsp-installer', config = function() require('lsp').setup() end}
  use {'folke/trouble.nvim', config = function() require('trouble').setup() end}
  use {'onsails/lspkind-nvim', config = require('plugins.lspkind')}
  -- wrapper for jdtls
  use {'mfussenegger/nvim-jdtls'}
end)
