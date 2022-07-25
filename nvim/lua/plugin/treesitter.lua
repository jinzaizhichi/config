return function()
  require('nvim-treesitter.configs').setup({
    autotag = {
      enable = true,
      filetypes = {
        'html', 'javascript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'xml'
      },
    },
    ensure_installed = 'all', -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    ignore_install = {}, -- List of parsers to ignore installing
    highlight = {
      enable = true, -- false will disable the whole extension
      disable = {} -- list of language that will be disabled
    },
    autopairs = {
      enable = true
    },
    rainbow = {
      enable = true,
      extended_mode = true -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
      -- max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
    },
    refactor = {
      highlight_definitions = { 
        enable = true,
        -- Set to false if you have an `updatetime` of ~100.
        clear_on_cursor_move = false
      },
      highlight_current_scope = { enable = true },
      smart_rename = {
        enable = true,
        keymaps = {
          smart_rename = "grr",
        },
      },
      navigation = {
        enable = true,
        keymaps = {
          goto_definition = "gnd",
          list_definitions = "gnD",
          list_definitions_toc = "gO",
          goto_next_usage = "<a-*>",
          goto_previous_usage = "<a-#>",
        },
      },
    },
    context_commentstring = {
      enable = true,
    },
    textobjects = {
      select = {
        enable = true,
        -- Automatically jump forward to textobj, similar to targets.vim
        lookahead = true,
        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
        },
      },
    },
  })
end
