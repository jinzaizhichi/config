return function()

  local get_height = function()
    return math.floor(vim.o.lines * 0.5)
  end
  local get_width = function()
    return math.floor(vim.o.columns * 0.80 - 1)
  end
  require('toggleterm').setup({
    -- size can be a number or function which is passed the current terminal
    size = get_height(),
    open_mapping = [[<c-\><c-\>]],
    hide_numbers = false, -- hide the number column in toggleterm buffers
    shade_terminals = false,
    shading_factor = 3, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applies in insert mode
    terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
    -- persist_size = true,
    direction = 'horizontal',
    close_on_exit = true, -- close the terminal window when the process exits
    shell = vim.o.shell, -- change the default shell
    float_opts = {
      width = get_width(),
      height = get_height()
    }

  })
end
