return function()
  local fileIgnorePatterns = os.getenv('TELESCOPE_FILE_IGNORE_PATTERNS')
  local fileIgnoreTable = nil
  if fileIgnorePatterns then
    fileIgnoreTable = {}
    for pattern in string.gmatch(fileIgnorePatterns, "%S+") do
      table.insert(fileIgnoreTable, pattern)
    end
  end
  -- print(vim.inspect(fileIgnoreTable))
  local layout = require('telescope.actions.layout')
  require('telescope').setup({
    defaults = {
      file_ignore_patterns = fileIgnoreTable or nil,
      -- borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
      borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
      wrap_results = true,
      sorting_strategy = "ascending",
      layout_strategy = 'vertical',
      layout_config = {
        horizontal = {
          prompt_position = "top"
        },
        vertical = {
          prompt_position = "top"
        },
      },
      mappings = {
        i = {
          -- example
          -- ["<C-o>"] = trouble.open_with_trouble,
          ["<C-o>"] = function() layout.toggle_preview(vim.fn.bufnr()) end,
        },
        n = {
          ["<C-o>"] = function() layout.toggle_preview(vim.fn.bufnr()) end,
        }
      },
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--trim",
        "--hidden",
        "--multiline"
      }
    },
    pickers = {
      find_files = {
        find_command = { "fd", "--type", "f", "--strip-cwd-prefix" }
      },
    },
    extensions = {
      fzf = {
        fuzzy = true, -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true, -- override the file sorter
        case_mode = "smart_case", -- or "ignore_case" or "respect_case", the default case_mode is "smart_case"
      },
      ["ui-select"] = {
        require("telescope.themes").get_cursor {
          borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
          -- borderchars = {
            -- prompt = { "─", "│", " ", "│", "┌", "┐", "│", "│" },
            -- results = { "─", "│", "─", "│", "├", "┤", "┘", "└" },
            -- preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
          -- }
        }
      },
      undo = {
        side_by_side = true,
        layout_strategy = "vertical",
        layout_config = {
          preview_height = 0.8,
        },
      },
    }
  })
  require('telescope').load_extension('projects')
  require('telescope').load_extension('fzf')
  require('telescope').load_extension('undo')
  require('telescope').load_extension('ui-select')
  require('telescope').load_extension('live_grep_args')
  require('telescope').load_extension('session-lens')
end
