return function()
  require('telescope').setup({
    defaults = {
      mappings = {
        i = {
          -- example
          -- ["<C-o>"] = trouble.open_with_trouble,
        },
        n = {
        }
      },
    },
    extensions = {
      fzf = {
        fuzzy = true,                    -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true,     -- override the file sorter
        case_mode = "smart_case",        -- or "ignore_case" or "respect_case", the default case_mode is "smart_case"
      },
      ["ui-select"] = {
        require("telescope.themes").get_dropdown {}
      },
    }
  })
  require('telescope').load_extension('dap')
  require('telescope').load_extension('projects')
  require('telescope').load_extension('fzf')
  require("telescope").load_extension("ui-select")
  require("telescope").load_extension("session-lens")
end
