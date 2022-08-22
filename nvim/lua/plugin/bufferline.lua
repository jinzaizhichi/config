return function()
  local navic = require('nvim-navic')
  require('bufferline').setup({
    options = {
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
            table.insert(result, {text = navic.get_location() .. ' ', fg = "#a9a1e1", bg = '#202328'})
          end
          return result
        end,
      },
      -- offsets = {{filetype = "NvimTree", text = "NvimTree"}}
    },
    highlights = {
        fill = {
            -- fg = '#282c34',
            bg = '#202328',
        },
        indicator_selected = {
            fg = '#51afef',
            -- bg = '#282c34'
        },
        --[[ background = {
            fg = '<color-value-here>',
            bg = '<color-value-here>'
        },
        tab = {
            fg = '<color-value-here>',
            bg = '<color-value-here>'
        },
        tab_selected = {
            fg = tabline_sel_bg,
            bg = '<color-value-here>'
        },
        tab_close = {
            fg = '<color-value-here>',
            bg = '<color-value-here>'
        },
        close_button = {
            fg = '<color-value-here>',
            bg = '<color-value-here>'
        },
        close_button_visible = {
            fg = '<color-value-here>',
            bg = '<color-value-here>'
        },
        close_button_selected = {
            fg = '<color-value-here>',
            bg = '<color-value-here>'
        },
        buffer_visible = {
            fg = '<color-value-here>',
            bg = '<color-value-here>'
        },
        buffer_selected = {
            fg = normal_fg,
            bg = '<color-value-here>',
            gui = "bold,italic"
        },
        diagnostic = {
            fg = <color-value-here>,
            bg = <color-value-here>,
        },
        diagnostic_visible = {
            fg = <color-value-here>,
            bg = <color-value-here>,
        },
        diagnostic_selected = {
            fg = <color-value-here>,
            bg = <color-value-here>,
            gui = "bold,italic"
        },
        info = {
            fg = <color-value-here>,
            sp = <color-value-here>,
            bg = <color-value-here>
        },
        info_visible = {
            fg = <color-value-here>,
            bg = <color-value-here>
        },
        info_selected = {
            fg = <color-value-here>,
            bg = <color-value-here>,
            gui = "bold,italic",
            sp = <color-value-here>
        },
        info_diagnostic = {
            fg = <color-value-here>,
            sp = <color-value-here>,
            bg = <color-value-here>
        },
        info_diagnostic_visible = {
            fg = <color-value-here>,
            bg = <color-value-here>
        },
        info_diagnostic_selected = {
            fg = <color-value-here>,
            bg = <color-value-here>,
            gui = "bold,italic",
            sp = <color-value-here>
        },
        warning = {
            fg = <color-value-here>,
            sp = <color-value-here>,
            bg = <color-value-here>
        },
        warning_visible = {
            fg = <color-value-here>,
            bg = <color-value-here>
        },
        warning_selected = {
            fg = <color-value-here>,
            bg = <color-value-here>,
            gui = "bold,italic",
            sp = <color-value-here>
        },
        warning_diagnostic = {
            fg = <color-value-here>,
            sp = <color-value-here>,
            bg = <color-value-here>
        },
        warning_diagnostic_visible = {
            fg = <color-value-here>,
            bg = <color-value-here>
        },
        warning_diagnostic_selected = {
            fg = <color-value-here>,
            bg = <color-value-here>,
            gui = "bold,italic",
            sp = warning_diagnostic_fg
        },
        error = {
            fg = <color-value-here>,
            bg = <color-value-here>,
            sp = <color-value-here>
        },
        error_visible = {
            fg = <color-value-here>,
            bg = <color-value-here>
        },
        error_selected = {
            fg = <color-value-here>,
            bg = <color-value-here>,
            gui = "bold,italic",
            sp = <color-value-here>
        },
        error_diagnostic = {
            fg = <color-value-here>,
            bg = <color-value-here>,
            sp = <color-value-here>
        },
        error_diagnostic_visible = {
            fg = <color-value-here>,
            bg = <color-value-here>
        },
        error_diagnostic_selected = {
            fg = <color-value-here>,
            bg = <color-value-here>,
            gui = "bold,italic",
            sp = <color-value-here>
        },
        modified = {
            fg = '<color-value-here>',
            bg = '<color-value-here>'
        },
        modified_visible = {
            fg = '<color-value-here>',
            bg = '<color-value-here>'
        },
        modified_selected = {
            fg = '<color-value-here>',
            bg = '<color-value-here>'
        },
        duplicate_selected = {
            fg = '<color-value-here>',
            gui = "italic",
            bg = '<color-value-here>'
        },
        duplicate_visible = {
            fg = '<color-value-here>',
            gui = "italic",
            bg = '<color-value-here>'
        },
        duplicate = {
            fg = '<color-value-here>',
            gui = "italic",
            bg = '<color-value-here>'
        },
        separator_selected = {
            fg = '<color-value-here>,
            bg = '<color-value-here>'
        },
        separator_visible = {
            fg = '<color-value-here>,
            bg = '<color-value-here>'
        },
        separator = {
            fg = '<color-value-here>,
            bg = '<color-value-here>'
        },
        pick_selected = {
            fg = '<color-value-here>',
            bg = '<color-value-here>',
            gui = "bold,italic"
        },
        pick_visible = {
            fg = '<color-value-here>',
            bg = '<color-value-here>',
            gui = "bold,italic"
        },
        pick = {
            fg = '<color-value-here>',
            bg = '<color-value-here>',
            gui = "bold,italic"
        } ]]
    }
  })
end
