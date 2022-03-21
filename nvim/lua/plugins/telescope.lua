return function()
  local actions = require('telescope.actions')
  local layout = require('telescope.actions.layout')
  local trouble = require("trouble.providers.telescope")
  require('telescope').setup({
    defaults = {
      mappings = {
        i = {
          -- IMPORTANT
          -- either hot-reloaded or `function(prompt_bufnr) telescope.extensions.hop.hop end`
          ["<C-o>"] = trouble.open_with_trouble,
          ["<C-i>"] = function () layout.toggle_preview(vim.fn.bufnr()) end,
          -- custom hop loop to multi selects and sending selected entries to quickfix list
          ["<C-space>"] = function(prompt_bufnr)
            local opts = {
              callback = actions.toggle_selection,
              loop_callback = actions.send_selected_to_qflist,
            }
            require("telescope").extensions.hop._hop_loop(prompt_bufnr, opts)
          end,
        },
        n = {
          ["<C-o>"] = trouble.open_with_trouble,
          ["<C-i>"] = function () layout.toggle_preview(vim.fn.bufnr()) end,
          -- custom hop loop to multi selects and sending selected entries to quickfix list
          ["<C-space>"] = function(prompt_bufnr)
            local opts = {
              callback = actions.toggle_selection,
              loop_callback = actions.send_selected_to_qflist,
            }
            require("telescope").extensions.hop._hop_loop(prompt_bufnr, opts)
          end,
        }
      },
    },
    extensions = {
      fzf = {
        fuzzy = true,                    -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true,     -- override the file sorter
        case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                         -- the default case_mode is "smart_case"
      },
      ["ui-select"] = {
        require("telescope.themes").get_dropdown {}
      },
    }
  })
  require('telescope').load_extension('dap')
  require('telescope').load_extension('projects')
  require('telescope').load_extension('fzf')
  require('telescope').load_extension('hop')
  require("telescope").load_extension("ui-select")
  require("telescope").load_extension("session-lens")
end
