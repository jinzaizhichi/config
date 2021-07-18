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
  use 'kyazdani42/nvim-tree.lua'
  use {'kyazdani42/nvim-web-devicons'}
  use {'akinsho/nvim-bufferline.lua', config = function()
      require('bufferline').setup(require('plugins.nvim-bufferline'))
  end}
  use {'glepnir/galaxyline.nvim', branch = 'main', config = function() require('eviline') end}
  -- treesitter and treesitter base plug
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = function()
      require('nvim-treesitter.configs').setup(require('plugins.nvim-treesitter'))
  end}
  use {'nvim-treesitter/nvim-treesitter-textobjects'}
  use {'lewis6991/spellsitter.nvim', config = function() require('spellsitter').setup() end}
  -- git
  use { 'lewis6991/gitsigns.nvim', config = function() require('gitsigns').setup() end }
  use {'kdheepak/lazygit.nvim'}
  use {'sindrets/diffview.nvim', config = function() require('diffview').setup(require('plugins.diffview')) end}
  -- translator
  use {'voldikss/vim-translator'}
  -- toggle tansparent
  use {'xiyaowong/nvim-transparent'}
  -- comment
  use {'b3nj5m1n/kommentary'}
  use {'folke/todo-comments.nvim', config = function() require('todo-comments').setup{} end}
  -- highlight different word at same time
  use {'lfv89/vim-interestingwords'}
  -- project task manage
  use {'skywind3000/asynctasks.vim'}
  use {'skywind3000/asyncrun.vim'}
  use {'skywind3000/asyncrun.extra'}
  -- db manage
  use {'tpope/vim-dadbod'}
  use {'kristijanhusak/vim-dadbod-ui'}
  -- incsearch
  use {'kevinhwang91/nvim-hlslens'}
  use {'tpope/vim-surround'}
  use {'akinsho/nvim-toggleterm.lua', config = function()
    require('toggleterm').setup(require('plugins.nvim-toggleterm'))
  end}
  -- editing
  use {'windwp/nvim-autopairs', config = function() require('nvim-autopairs').setup() end}
  use {'itchyny/vim-cursorword'}
  use {'windwp/nvim-ts-autotag'}
  use {'andymass/vim-matchup'}
  -- batter quickfix window
  use {'kevinhwang91/nvim-bqf'}
  -- powerful replace tool
  use {'windwp/nvim-spectre'}
  -- fuzzy finder
  use 'nvim-telescope/telescope.nvim'
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
  use {'hrsh7th/nvim-compe', config = function() require('compe').setup(require('plugins.compe')) end}
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
  use {'rcarriga/nvim-dap-ui'}
  use {'theHamsta/nvim-dap-virtual-text'}
  -- which keys
  use {'folke/which-key.nvim', config = function() require('which-key').setup() end}
  -- lsp setup
  use {'mhartington/formatter.nvim', config = function() require('formatter').setup(require('plugins.formatter')) end}
  use {'neovim/nvim-lspconfig'}
  use {'kabouzeid/nvim-lspinstall', config = function()
    require('plugins.lspinstall').setup_servers()
    -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
    require('lspinstall').post_install_hook = function ()
      require('plugins.lspinstall').setup_servers() -- reload installed servers
      vim.cmd('bufdo e') -- this triggers the FileType autocmd that starts the server
    end
  end}
  use {'RishabhRD/popfix'}
  use {'RishabhRD/nvim-lsputils', config = function() require('plugins.lsputils') end}
  use {'norcalli/snippets.nvim', config = function() require'snippets'.use_suggested_mappings() end}
  use {'folke/trouble.nvim', config = function() require('trouble').setup() end}
  use {'nanotee/sqls.nvim', config = function() require('lspconfig').sqls.setup(require('plugins.sqls')) end}
  use {'onsails/lspkind-nvim', config = function() require('lspkind').init(require('plugins.lspkind')) end}
  -- this jdtls intergation is not good enough for me now
  use {'mfussenegger/nvim-jdtls'}

end)
