return function()
  local navic = require('nvim-navic')
  local function lsp_status()
    -- print(vim.inspect(require('lsp-status').messages()))
    local status = require('lsp-status').status()
    status = string.sub(status, 7, string.len(status))
    if navic.is_available() then
      status = status .. navic.get_location()
    end
    if string.len(status) > 120 then
      status = string.sub(status, 0, 120) .. '…'
    end
    return status
  end

  require('lualine').setup({
    options = {
      icons_enabled = true,
      theme = 'auto',
      -- component_separators = { left = '', right = '' },
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      }
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { 'filename', lsp_status },
      lualine_x = { 'encoding', 'fileformat', 'filetype' },
      lualine_y = { 'progress' },
      lualine_z = { 'location' }
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { 'filename' },
      lualine_x = { 'location' },
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {
      lualine_a = {
        {
          'buffers',
          mode = 2,
          show_filename_only = false,
          hide_filename_extension = false
        }
      },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = { 'windows' },
      lualine_z = { 'tabs' }
    },
    winbar = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {}
    },
    inactive_winbar = {},
    extensions = {
      'quickfix',
      'man',
      'toggleterm',
    }
  })
end
