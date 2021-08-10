vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- base plugin
  use {'wbthomason/packer.nvim'}
  use {'nvim-lua/plenary.nvim'}
  use {'nvim-lua/popup.nvim'}
  -- theme and color
  use {'tjdevries/colorbuddy.vim'}
  use {'Th3Whit3Wolf/onebuddy'}
  use {'norcalli/nvim-colorizer.lua', config = require('colorizer').setup()}
  use {'p00f/nvim-ts-rainbow'}
  -- buffer | statusline | icon | treeview | startup buffer
  use {'glepnir/dashboard-nvim'}
  use {'kyazdani42/nvim-tree.lua'}
  use {'kyazdani42/nvim-web-devicons'}
  use {'akinsho/nvim-bufferline.lua', config = require('plugins.nvim-bufferline')}
  use {'glepnir/galaxyline.nvim', branch = 'main', config = function() require('plugins.eviline') end}
  -- treesitter and treesitter base plug
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = require('plugins.nvim-treesitter')}
  use {'nvim-treesitter/nvim-treesitter-textobjects'}
  use {'lewis6991/spellsitter.nvim', config = require('plugins.spellsitter')}
  -- git
  use { 'lewis6991/gitsigns.nvim', config = require('plugins.gitsigns')}
  use {'kdheepak/lazygit.nvim'}
  use {'sindrets/diffview.nvim', config = require('plugins.diffview')}
  -- translator
  use {'voldikss/vim-translator'}
  -- toggle tansparent
  use {'xiyaowong/nvim-transparent'}
  -- comment
  use {'b3nj5m1n/kommentary'}
  use {'folke/todo-comments.nvim', config = function() require('todo-comments').setup() end}
  -- highlight different word at same time
  use {'lfv89/vim-interestingwords'}
  -- db manage
  use {'tpope/vim-dadbod'}
  use {'kristijanhusak/vim-dadbod-ui'}
  -- incsearch
  use {'kevinhwang91/nvim-hlslens'}
  -- terminal
  use {'akinsho/nvim-toggleterm.lua', config = require('plugins.nvim-toggleterm')}
  -- editing
  use {'tpope/vim-surround'}
  use {'windwp/nvim-autopairs', config = require('plugins.nvim-autopairs')}
  use {'itchyny/vim-cursorword'}
  use {'windwp/nvim-ts-autotag'}
  use {'andymass/vim-matchup'}
  -- batter quickfix window
  use {'kevinhwang91/nvim-bqf'}
  -- powerful replace tool
  use {'windwp/nvim-spectre'}
  -- fuzzy finder
  use {'sudormrfbin/cheatsheet.nvim'}
  use {'nvim-telescope/telescope-hop.nvim'}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {'nvim-telescope/telescope-fzf-writer.nvim'}
  use {'nvim-telescope/telescope-dap.nvim'}
  use {'nvim-telescope/telescope-project.nvim'}
  use {'nvim-telescope/telescope.nvim', config = require('plugins.telescope')}
  -- motion
  use {'phaazon/hop.nvim', as = 'hop', config = function() require('hop').setup() end}
  use {'rhysd/clever-f.vim'}
  -- rest client
  use {'NTBBloodbath/rest.nvim', config = function() require('rest-nvim').setup() end}
  -- auto change root dir
  use {'ahmedkhalf/lsp-rooter.nvim', config = function() require('lsp-rooter').setup() end}
  -- markdown preview
  use {'npxbr/glow.nvim', run = ':GlowInstall'}
  -- lsp auto completion
  use {'hrsh7th/nvim-compe', config = require('plugins.compe')}
  use {'hrsh7th/vim-vsnip'}
  use {'tzachar/compe-tabnine', run='./install.sh'}
  use {'kristijanhusak/vim-dadbod-completion'}
  use {'hrsh7th/vim-vsnip-integ'}
  -- use {'haorenW1025/completion-nvim' }
  -- use {'aca/completion-tabnine', run='./install.sh'}
  -- use {'nvim-treesitter/completion-treesitter'}
  -- use {'kristijanhusak/completion-tags'}
  -- use neovim in browser
  -- use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
  -- nvim debug tool
  use {'mfussenegger/nvim-dap'}
  use {'rcarriga/nvim-dap-ui', config = function() require("dapui").setup() end}
  use {'theHamsta/nvim-dap-virtual-text'}
  -- which keys
  use {'folke/which-key.nvim', config = require('plugins.which-key')}
  -- lsp setup
  use {'mhartington/formatter.nvim', config = require('plugins.formatter')}
  use {'neovim/nvim-lspconfig'}
  use {'kabouzeid/nvim-lspinstall', config = require('plugins.lspinstall')}
  use {'RishabhRD/popfix'}
  use {'RishabhRD/nvim-lsputils', config = function() require('plugins.lsputils') end}
  use {'norcalli/snippets.nvim', config = function() require('snippets').use_suggested_mappings() end}
  use {'folke/trouble.nvim', config = function() require('trouble').setup() end}
  use {'nanotee/sqls.nvim', config = require('plugins.sqls')}
  use {'onsails/lspkind-nvim', config = require('plugins.lspkind')}
  -- wrapper for jdtls
  use {'mfussenegger/nvim-jdtls'}
end)
