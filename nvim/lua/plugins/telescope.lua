return function()
  local fileIgnorePatterns = os.getenv('TELESCOPE_FILE_IGNORE_PATTERNS')
  local fileIgnoreTable = nil
  if fileIgnorePatterns then
    fileIgnoreTable = {}
    for pattern in string.gmatch(fileIgnorePatterns, "%S+") do 
     table.insert(fileIgnoreTable, pattern)
    end
  end
  print(vim.inspect(fileIgnoreTable))
  local layout = require('telescope.actions.layout')
  require('telescope').setup({
    defaults = {
      file_ignore_patterns = fileIgnoreTable or nil,
      mappings = {
        i = {
          -- example
          -- ["<C-o>"] = trouble.open_with_trouble,
          ["<C-o>"] = function () layout.toggle_preview(vim.fn.bufnr()) end,
        },
        n = {
          ["<C-o>"] = function () layout.toggle_preview(vim.fn.bufnr()) end,
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
end
