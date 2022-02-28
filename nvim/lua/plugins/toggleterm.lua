return function()
  require('toggleterm').setup({
    -- size can be a number or function which is passed the current terminal
    size = 15,
    open_mapping = [[<c-\><c-\>]],
    hide_numbers = false, -- hide the number column in toggleterm buffers
    shade_terminals = false,
    shading_factor = 3, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applies in insert mode
    terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
    -- persist_size = true,
    direction = 'float',
    close_on_exit = true, -- close the terminal window when the process exits
    shell = vim.o.shell, -- change the default shell
  })
end
