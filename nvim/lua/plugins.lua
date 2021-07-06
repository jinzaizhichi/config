-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
-- vim._update_package_paths()

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { },  -- list of language that will be disabled
  },
}
  -- You can specify multiple plugins in a single call
  use {'tjdevries/colorbuddy.vim'}
  -- You can alias plugin names
  use {'Th3Whit3Wolf/onebuddy'}
  -- Use dependency and run lua function after load
  -- use 'glepnir/indent-guides.nvim'
  use {'nvim-lua/plenary.nvim'}
  use {'nvim-lua/popup.nvim'}
  use { 'lewis6991/gitsigns.nvim', config = function()  end }
  require('gitsigns').setup()
  use 'b3nj5m1n/kommentary'
  use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons', config = function() end}
      require("bufferline").setup{
          options = {
                show_buffer_icons = false,
                show_close_icon = false,
                show_buffer_close_icons = false,
          },
            highlights = {
                buffer_selected = {
                    guifg = '#282c34',
                    guibg = '#bbc2cf',
                    gui = "bold,italic"
                },
            }
        }
  use {'kevinhwang91/nvim-hlslens'}
  use 'kyazdani42/nvim-tree.lua'
  use 'tpope/vim-surround'
  use {'akinsho/nvim-toggleterm.lua'}

require("toggleterm").setup{
      -- size can be a number or function which is passed the current terminal
      size = 15,
      open_mapping = [[<leader>m]],
      hide_numbers = false, -- hide the number column in toggleterm buffers
      shade_terminals = true,
      -- shading_factor = '<1>', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
      start_in_insert = true,
      insert_mappings = true, -- whether or not the open mapping applies in insert mode
      persist_size = true,
      direction = 'horizontal',
      close_on_exit = true, -- close the terminal window when the process exits
      shell = vim.o.shell, -- change the default shell
    }
  use 'nvim-telescope/telescope.nvim'
  use {'norcalli/nvim-colorizer.lua', config = require('colorizer').setup()}
  use {'lewis6991/spellsitter.nvim', config = function()  end}
  require('spellsitter').setup()
  use {'windwp/nvim-autopairs', config = function() require('nvim-autopairs').setup() end} 
  require('nvim-autopairs').setup()
  --[[ use {
    'blackCauldron7/surround.nvim',
    config = function()
      require 'surround'.setup {}
    end
  } ]]
  use {'NTBBloodbath/rest.nvim', config = function()  end}
  require('rest-nvim').setup()
  use {'glepnir/dashboard-nvim'}
  use {'p00f/nvim-ts-rainbow', config = function() end }
  use 'windwp/nvim-spectre'
  use { "ahmedkhalf/lsp-rooter.nvim"}

  require("lsp-rooter").setup {
  -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  use 'kdheepak/lazygit.nvim'
  use 'itchyny/vim-cursorword'
  use 'windwp/nvim-ts-autotag'
  use {'kevinhwang91/nvim-bqf'}
  use {'folke/todo-comments.nvim', config = function() require("todo-comments").setup{} end}
  use {'phaazon/hop.nvim', as = 'hop'}
    -- you can configure Hop the way you like here; see :h hop-config
  require('hop').setup()
  -- Don't know why highlight not work util add this line
  -- require('hop').setup({create_hl_autocmd = true})
  --[[ vim.api.nvim_set_keymap('n', '<leader><leader>w', "<cmd>lua require'hop'.hint_words()<cr>", {})
  vim.api.nvim_set_keymap('n', '<leader><leader>p', "<cmd>lua require'hop'.hint_patterns()<cr>", {})
  vim.api.nvim_set_keymap('n', '<leader><leader>j', "<cmd>lua require'hop'.hint_lines()<cr>", {})
  vim.api.nvim_set_keymap('n', '<leader><leader>s', "<cmd>lua require'hop'.hint_char1()<cr>", {}) ]]

  -- Lazy loading:
  -- Load on specific commands
  -- use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- Load on an autocommand event
  use {'andymass/vim-matchup', event = 'VimEnter'}

  -- Load on a combination of conditions: specific filetypes or commands
  -- Also run code after load (see the "config" key)
  -- use {
  --   'w0rp/ale',
  --   ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
  --   cmd = 'ALEEnable',
  --   config = 'vim.cmd[[ALEEnable]]'
  -- }

  use {'hrsh7th/nvim-compe',
    requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}},
  config = function()
  end}
      require'compe'.setup {
      enabled = true;
      autocomplete = true;
      debug = false;
      min_length = 1;
      preselect = 'enable';
      throttle_time = 80;
      source_timeout = 200;
      resolve_timeout = 800;
      incomplete_delay = 400;
      max_abbr_width = 100;
      max_kind_width = 100;
      max_menu_width = 100;
      documentation = {
        border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`
        winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
        max_width = 120,
        min_width = 60,
        max_height = math.floor(vim.o.lines * 0.3),
        min_height = 1,
      };

      source = {
        path = true;
        buffer = true;
        calc = true;
        nvim_lsp = true;
        nvim_lua = true;
        vsnip = true;
        ultisnips = true;
        luasnip = true;
      };
    }
    use {'tzachar/compe-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-compe'}
  -- Plugins can have dependencies on other plugins
  --[[ use {
    'haorenW1025/completion-nvim',
    opt = true,
    requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
  } ]]
  -- require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}

  -- Plugins can also depend on rocks from luarocks.org:
  --use {
  --  'my/supercoolplugin',
  --  rocks = {'lpeg', {'lua-cjson', version = '2.1.0'}}
  --}

  -- You can specify rocks in isolation
  --use_rocks 'penlight'
  --use_rocks {'lua-resty-http', 'lpeg'}

  -- Local plugins can be included
  -- use '~/projects/personal/hover.nvim'

  -- Plugins can have post-install/update hooks
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}


  -- Post-install/update hook with call of vimscript function with argument
  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
  use 'mfussenegger/nvim-dap'

  use {'sindrets/diffview.nvim', config = function() 
  local cb = require'diffview.config'.diffview_callback

  require'diffview'.setup{
    diff_binaries = false,    -- Show diffs for binaries
    file_panel = {
      width = 35,
      use_icons = true        -- Requires nvim-web-devicons
    },
    key_bindings = {
      disable_defaults = false,                   -- Disable the default key bindings
      -- The `view` bindings are active in the diff buffers, only when the current
      -- tabpage is a Diffview.
      view = {
        ["<tab>"]     = cb("select_next_entry"),  -- Open the diff for the next file 
        ["<s-tab>"]   = cb("select_prev_entry"),  -- Open the diff for the previous file
        ["<leader>e"] = cb("focus_files"),        -- Bring focus to the files panel
        ["<leader>b"] = cb("toggle_files"),       -- Toggle the files panel.
      },
      file_panel = {
        ["j"]             = cb("next_entry"),         -- Bring the cursor to the next file entry
        ["<down>"]        = cb("next_entry"),
        ["k"]             = cb("prev_entry"),         -- Bring the cursor to the previous file entry.
        ["<up>"]          = cb("prev_entry"),
        ["<cr>"]          = cb("select_entry"),       -- Open the diff for the selected entry.
        ["o"]             = cb("select_entry"),
        ["<2-LeftMouse>"] = cb("select_entry"),
        ["-"]             = cb("toggle_stage_entry"), -- Stage / unstage the selected entry.
        ["S"]             = cb("stage_all"),          -- Stage all entries.
        ["U"]             = cb("unstage_all"),        -- Unstage all entries.
        ["R"]             = cb("refresh_files"),      -- Update stats and entries in the file list.
        ["<tab>"]         = cb("select_next_entry"),
        ["<s-tab>"]       = cb("select_prev_entry"),
        ["<leader>e"]     = cb("focus_files"),
        ["<leader>b"]     = cb("toggle_files"),
      }
    }
  }
  end}

  -- Use specific branch, dependency and run lua file after load
  use {
    'glepnir/galaxyline.nvim', branch = 'main', 
    config = function()  end,
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  require('eviline')

  use {'mhartington/formatter.nvim', config = function() require('formatter').setup() end}
  use 'neovim/nvim-lspconfig'
  local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { "pyright", "rust_analyzer", "tsserver" }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end
  use 'kabouzeid/nvim-lspinstall'
  require'lspinstall'.setup() -- important

  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
    require'lspconfig'[server].setup{}
  end
  local function setup_servers()
  require'lspinstall'.setup()
  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
    require'lspconfig'[server].setup{}
  end
  end
  
  setup_servers()
  
  -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
  require'lspinstall'.post_install_hook = function ()
    setup_servers() -- reload installed servers
    vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
  end
  use 'glepnir/lspsaga.nvim'
  require'lspsaga'.init_lsp_saga()
  use {'norcalli/snippets.nvim', config = function() require'snippets'.use_suggested_mappings() end }
  use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
  }
  use 'nanotee/sqls.nvim'
  use 'folke/lsp-colors.nvim'
  use 'onsails/lspkind-nvim'
  use 'mfussenegger/nvim-jdtls'
  require'lspconfig'.sqls.setup{
    on_attach = function(client)
        client.resolved_capabilities.execute_command = true

        require'sqls'.setup{}
    end
  }
  require('lspkind').init({
    -- enables text annotations
    --
    -- default: true
    with_text = true,

    -- default symbol map
    -- can be either 'default' or
    -- 'codicons' for codicon preset (requires vscode-codicons font installed)
    --
    -- default: 'default'
    preset = 'codicons',

    -- override preset symbols
    --
    -- default: {}
    symbol_map = {
      Text = '',
      Method = 'ƒ',
      Function = '',
      Constructor = '',
      Variable = '',
      Class = '',
      Interface = 'ﰮ',
      Module = '',
      Property = '',
      Unit = '',
      Value = '',
      Enum = '了',
      Keyword = '',
      Snippet = '﬌',
      Color = '',
      File = '',
      Folder = '',
      EnumMember = '',
      Constant = '',
      Struct = ''
    },
  })

end)
