return function()
  local navic = require('nvim-navic')
  require('bufferline').setup({
    options = {
      separator_style = 'slant',
      show_buffer_icons = true,
      show_close_icon = false,
      show_buffer_close_icons = false,
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local s = " "
        for e, n in pairs(diagnostics_dict) do
          local sym = e == "error" and "" or
                          (e == "warning" and "" or "")
          s = s .. sym .. n
        end
        return s
      end,
      custom_areas = {
        right = function()
          local result = {}
          if navic.is_available() then
            table.insert(result, {text = navic.get_location() .. ' '})
          end
          return result
        end,
      },
      -- offsets = {{filetype = "NvimTree", text = "NvimTree"}}
    },
    highlights = {
        fill = {
            -- fg = '#101010',
            bg = '#101010',
        },
    }
  })
end
