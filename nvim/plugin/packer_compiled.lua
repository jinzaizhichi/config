-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/hewenjin/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/hewenjin/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/hewenjin/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/hewenjin/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/hewenjin/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cheatsheet.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/cheatsheet.nvim"
  },
  ["clever-f.vim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/clever-f.vim"
  },
  ["colorbuddy.vim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/colorbuddy.vim"
  },
  ["compe-tabnine"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/compe-tabnine"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["diffview.nvim"] = {
    config = { "\27LJ\1\2u\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\1G\0\1\0\15file_panel\1\0\2\nwidth\3#\14use_icons\2\1\0\1\18diff_binaries\1\nsetup\rdiffview\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/diffview.nvim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\1\2Š\1\0\0\4\0\6\0\n3\0\0\0003\1\1\0004\2\2\0007\2\3\0027\2\4\2'\3\0\0>\2\2\2;\2\2\1:\1\5\0H\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\4\0\0\21--stdin-filepath\0\19--single-quote\1\0\2\nstdin\2\bexe\rprettierD\0\0\2\0\3\0\0043\0\0\0003\1\1\0:\1\2\0H\0\2\0\targs\1\2\0\0\18--emit=stdout\1\0\2\nstdin\2\bexe\frustfmtJ\0\0\2\0\3\0\0043\0\0\0003\1\1\0:\1\2\0H\0\2\0\targs\1\3\0\0\19--indent-width\3\2\1\0\2\nstdin\2\bexe\15lua-format¢\1\1\0\5\0\f\0\0214\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\5\0002\3\3\0001\4\4\0;\4\1\3:\3\6\0022\3\3\0001\4\a\0;\4\1\3:\3\b\0022\3\3\0001\4\t\0;\4\1\3:\3\n\2:\2\v\1>\0\2\1G\0\1\0\rfiletype\blua\0\trust\0\15javascript\1\0\0\0\1\0\1\flogging\1\nsetup\14formatter\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/formatter.nvim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\1\2/\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\20plugins.eviline\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\2Ò\a\0\0\4\0\n\0\r4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0003\3\5\0:\3\6\0023\3\a\0:\3\b\2:\2\t\1>\0\2\1G\0\1\0\fkeymaps\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\1\0\v\17n <leader>gb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17v <leader>gsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>gp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17v <leader>grT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\fnoremap\2\17n <leader>gs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\1\0\2\29current_line_blame_delay\3ô\3\23current_line_blame\2\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["glow.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/glow.nvim"
  },
  hop = {
    config = { "\27LJ\1\0021\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/hop"
  },
  kommentary = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/lazygit.nvim"
  },
  ["lsp-rooter.nvim"] = {
    config = { "\27LJ\1\0028\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\15lsp-rooter\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/lsp-rooter.nvim"
  },
  ["lspkind-nvim"] = {
    config = { "\27LJ\1\2Ò\2\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\1G\0\1\0\15symbol_map\1\0\20\tText\bî˜’\rFunction\bï‚š\nClass\bîƒ\nColor\bîˆ«\14Interface\bï°®\vModule\bï£–\rConstant\bîˆ¬\vMethod\aÆ’\tUnit\bï‘µ\15EnumMember\bï…\rProperty\bî˜¤\vStruct\bïƒŠ\rVariable\bîž›\fSnippet\bï¬Œ\vFolder\bï„•\tFile\bï…›\nValue\bï¢Ÿ\16Constructor\bîˆ\tEnum\bäº†\fKeyword\bï …\1\0\2\vpreset\rcodicons\14with_text\2\tinit\flspkind\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\1\2ž\1\0\0\2\0\6\0\r4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\0014\0\0\0%\1\4\0>\0\2\0027\0\2\0003\1\5\0>\0\2\1G\0\1\0\1\0\2\17map_complete\2\vmap_cr\2$nvim-autopairs.completion.compe\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-bqf"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\1\2}\0\4\14\0\a\0\21%\4\0\0004\5\1\0\16\6\2\0>\5\2\4D\b\r€\a\b\2\0T\n\2€%\n\3\0T\v\5€\a\b\4\0T\n\2€%\n\5\0T\v\1€%\n\6\0\16\v\4\0\16\f\n\0\16\r\t\0$\4\r\vB\b\3\3N\bñH\4\2\0\bïª\bï±\fwarning\bï—\nerror\npairs\6 Ã\1\1\0\4\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0001\3\4\0:\3\5\2:\2\a\1>\0\2\1G\0\1\0\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\20show_close_icon\1\22show_buffer_icons\2\16diagnostics\rnvim_lsp\28show_buffer_close_icons\1\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\1\2F\0\1\6\0\3\0\b4\1\0\0007\1\1\0017\1\2\1\16\2\0\0)\3\2\0)\4\2\0)\5\2\0@\1\5\0\27nvim_replace_termcodes\bapi\bvim›\1\0\0\5\0\b\2\0284\0\0\0007\0\1\0007\0\2\0%\1\3\0>\0\2\2\21\0\0\0\b\0\1\0T\1\18€4\1\0\0007\1\1\0017\1\4\1%\2\3\0>\1\2\2\16\2\1\0007\1\5\1\16\3\0\0\16\4\0\0>\1\4\2\16\2\1\0007\1\6\1%\3\a\0>\1\3\2\v\1\0\0T\1\2€)\1\1\0T\2\1€)\1\2\0H\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0î\1\0\0\2\2\b\1\"4\0\0\0007\0\1\0007\0\2\0>\0\1\2\t\0\0\0T\0\4€+\0\0\0%\1\3\0@\0\2\0T\0\23€4\0\0\0007\0\1\0007\0\4\0'\1\1\0>\0\2\2\t\0\0\0T\0\4€+\0\0\0%\1\5\0@\0\2\0T\0\f€+\0\1\0>\0\1\2\15\0\0\0T\1\4€+\0\0\0%\1\6\0@\0\2\0T\0\4€4\0\0\0007\0\1\0007\0\a\0@\0\1\0G\0\1\0\0À\1À\19compe#complete\n<Tab>!<Plug>(vsnip-expand-or-jump)\20vsnip#available\n<C-n>\15pumvisible\afn\bvim\2µ\1\0\0\2\1\a\1\0254\0\0\0007\0\1\0007\0\2\0>\0\1\2\t\0\0\0T\0\4€+\0\0\0%\1\3\0@\0\2\0T\0\14€4\0\0\0007\0\1\0007\0\4\0'\1ÿÿ>\0\2\2\t\0\0\0T\0\4€+\0\0\0%\1\5\0@\0\2\0T\0\3€+\0\0\0%\1\6\0@\0\2\0G\0\1\0\0À\f<S-Tab>\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\n<C-p>\15pumvisible\afn\bvim\2…\a\1\0\a\0#\1>1\0\0\0001\1\1\0004\2\2\0001\3\4\0:\3\3\0024\2\2\0001\3\6\0:\3\5\0024\2\a\0007\2\b\0027\2\t\2%\3\n\0%\4\v\0%\5\f\0003\6\r\0>\2\5\0014\2\a\0007\2\b\0027\2\t\2%\3\14\0%\4\v\0%\5\f\0003\6\15\0>\2\5\0014\2\a\0007\2\b\0027\2\t\2%\3\n\0%\4\16\0%\5\17\0003\6\18\0>\2\5\0014\2\a\0007\2\b\0027\2\t\2%\3\14\0%\4\16\0%\5\17\0003\6\19\0>\2\5\0014\2\20\0%\3\21\0>\2\2\0027\2\22\0023\3\23\0003\4\25\0003\5\24\0:\5\26\0044\5\27\0007\5\28\0054\6\a\0007\6\29\0067\6\30\6\22\6\0\6>\5\2\2:\5\31\4:\4 \0033\4!\0:\4\"\3>\2\2\0010\0\0€G\0\1\0\vsource\1\0\t\14ultisnips\2\rnvim_lsp\2\nvsnip\2\tpath\2\rnvim_lua\2\vbuffer\2\tcalc\2\ftabnine\2\fluasnip\2\18documentation\15max_height\nlines\6o\nfloor\tmath\vborder\1\0\4\17winhighlightHNormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder\15min_height\3\1\14min_width\3<\14max_width\3x\1\t\0\0\5\5\5\6 \5\5\5\6 \1\0\f\20resolve_timeout\3 \6\19source_timeout\3È\1\fenabled\2\ndebug\1\14preselect\venable\19max_abbr_width\3d\21incomplete_delay\3\3\17autocomplete\2\19max_kind_width\3d\15min_length\3\1\18throttle_time\3P\19max_menu_width\3d\nsetup\ncompe\frequire\1\0\1\texpr\2\1\0\1\texpr\2\27v:lua.s_tab_complete()\f<S-Tab>\1\0\1\texpr\2\6s\1\0\1\texpr\2\25v:lua.tab_complete()\n<Tab>\6i\20nvim_set_keymap\bapi\bvim\0\19s_tab_complete\0\17tab_complete\a_G\0\0çÌ™³\6³æÌþ\3\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\1\0023\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\ndapui\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text"
  },
  ["nvim-hlslens"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-hlslens"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { "\27LJ\1\2A\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1À\24nvim_buf_set_keymap\bapi\bvimA\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1À\24nvim_buf_set_option\bapi\bvim£\22\1\2\t\1L\0Ö\0011\2\0\0001\3\1\0007\4\2\0\a\4\3\0T\4\16€4\4\4\0%\5\5\0>\4\2\0027\4\6\4>\4\1\0014\4\4\0%\5\a\0>\4\2\0027\4\b\0043\5\t\0>\4\2\0014\4\4\0%\5\n\0>\4\2\0027\4\v\4>\4\1\1\16\4\3\0%\5\f\0%\6\r\0>\4\3\1\16\4\2\0%\5\14\0%\6\15\0%\a\16\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6\17\0%\a\18\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6\19\0%\a\20\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6\21\0%\a\22\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6\23\0%\a\24\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6\25\0%\a\26\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6\27\0%\a\28\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6\29\0%\a\30\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6\31\0%\a \0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6!\0%\a\"\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6#\0%\a$\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6%\0%\a&\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6'\0%\a(\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6)\0%\a*\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6+\0%\a,\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6-\0%\a.\0+\b\0\0>\4\5\1\16\4\2\0%\5/\0%\6-\0%\a0\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\0061\0%\a2\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\0063\0%\a4\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\0065\0%\a6\0+\b\0\0>\4\5\1\16\4\2\0%\5/\0%\0065\0%\a7\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\0068\0%\a9\0+\b\0\0>\4\5\1\16\4\2\0%\5/\0%\0068\0%\a:\0+\b\0\0>\4\5\1\16\4\2\0%\5/\0%\6;\0%\a<\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6=\0%\a>\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6?\0%\a@\0+\b\0\0>\4\5\0017\4A\0007\4B\4\15\0\4\0T\5\a€\16\4\2\0%\5\14\0%\6C\0%\aD\0+\b\0\0>\4\5\1T\4\n€7\4A\0007\4E\4\15\0\4\0T\5\6€\16\4\2\0%\5\14\0%\6C\0%\aF\0+\b\0\0>\4\5\0017\4A\0007\4G\4\15\0\4\0T\5\6€4\4H\0007\4I\0047\4J\4%\5K\0)\6\1\0>\4\3\0010\0\0€G\0\1\0\1ÀÝ\1    augroup lsp_document_highlight\n    autocmd! * <buffer>\n    autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n    autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n    augroup END\n    \14nvim_exec\bapi\bvim\23document_highlight0<cmd>lua vim.lsp.buf.range_formatting()<CR>\30document_range_formatting*<cmd>lua vim.lsp.buf.formatting()<CR>\15<leader>fm\24document_formatting\26resolved_capabilities8<Cmd>lua require('jdtls').test_nearest_method()<CR>\16<leader>cjn/<Cmd>lua require('jdtls').test_class()<CR>\16<leader>cjt7<Cmd>lua require('jdtls').extract_method(true)<CR>\15<leader>cm9<Cmd>lua require('jdtls').extract_constant(true)<CR>5<Cmd>lua require('jdtls').extract_constant()<CR>\15<leader>ct9<Cmd>lua require('jdtls').extract_variable(true)<CR>5<Cmd>lua require('jdtls').extract_variable()<CR>\15<leader>cv5<Cmd>lua require('jdtls').organize_imports()<CR>\15<leader>coA<Cmd>lua require('jdtls').code_action(false, 'refactor')<CR>\15<leader>cr4<Cmd>lua require('jdtls').code_action(true)<CR>\6v0<Cmd>lua require('jdtls').code_action()<CR>\15<leader>ca2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\14<leader>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\14<leader>e*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<leader>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<Cmd>lua vim.lsp.buf.hover()<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\27v:lua.vim.lsp.omnifunc\romnifunc\17add_commands\16jdtls.setup\1\0\1\19hotcodereplace\tauto\14setup_dap\njdtls!setup_dap_main_class_configs\14jdtls.dap\frequire\tjava\tname\0\0¥\2\0\0\4\1\15\0\0224\0\0\0007\0\1\0007\0\2\0007\0\3\0>\0\1\0027\1\4\0007\1\5\0017\1\6\1)\2\2\0:\2\a\0017\1\4\0007\1\5\0017\1\6\0013\2\n\0003\3\t\0:\3\v\2:\2\b\0013\1\f\0:\0\r\1+\2\0\0:\2\14\1H\1\2\0\2À\14on_attach\17capabilities\1\0\0\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim³\4\0\0\t\1\25\0E4\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\0\3\0>\0\1\0024\1\4\0007\1\5\1\16\2\0\0%\3\6\0>\1\3\0014\1\4\0007\1\5\1\16\2\0\0%\3\a\0>\1\3\0014\1\b\0\16\2\0\0>\1\2\4D\4*€+\6\0\0>\6\1\2\a\5\t\0T\a\4€4\a\0\0%\b\v\0>\a\2\2:\a\n\6\a\5\a\0T\a\2€3\a\r\0:\a\f\6\a\5\6\0T\a\2€3\a\14\0:\a\f\6\a\5\15\0T\a\17€4\a\0\0%\b\16\0>\a\2\0027\b\17\a:\b\17\0067\b\n\a:\b\n\0067\b\18\a:\b\18\0067\b\19\a:\b\19\0067\b\20\a:\b\20\0063\b\21\0:\b\f\0063\b\23\0:\b\22\0064\a\0\0%\b\24\0>\a\2\0026\a\5\a7\a\2\a\16\b\6\0>\a\2\1B\4\3\3N\4ÔG\0\1\0\3À\14lspconfig\1\0\1\27allow_incremental_sync\2\nflags\1\2\0\0\tjava\bcmd\17capabilities\fon_init\17init_options\22lsp.java.settings\tjava\1\3\0\0\6c\bcpp\1\4\0\0\nswift\16objective-c\18objective-cpp\14filetypes\21lsp.lua.settings\rsettings\blua\npairs\14sourcekit\vclangd\vinsert\ntable\22installed_servers\nsetup\15lspinstall\frequireG\0\0\2\1\4\0\b+\0\0\0007\0\0\0>\0\1\0014\0\1\0007\0\2\0%\1\3\0>\0\2\1G\0\1\0\0À\fbufdo e\bcmd\bvim\18setup_serversŽ\1\1\0\6\0\t\0\0152\0\0\0003\1\0\0001\2\1\0001\3\2\0001\4\4\0:\4\3\0007\4\3\0>\4\1\0014\4\5\0%\5\6\0>\4\2\0021\5\b\0:\5\a\0040\0\0€G\0\1\0\0\22post_install_hook\15lspinstall\frequire\0\18setup_servers\0\0\1\0\2\vsilent\2\fnoremap\2\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-lsputils"] = {
    config = { "\27LJ\1\0020\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\21plugins.lsputils\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-lsputils"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-spectre"
  },
  ["nvim-toggleterm.lua"] = {
    config = { "\27LJ\1\2Õ\1\0\0\3\0\a\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0004\2\4\0007\2\5\0027\2\6\2:\2\6\1>\0\2\1G\0\1\0\nshell\6o\bvim\1\0\b\20shade_terminals\2\20insert_mappings\1\tsize\3\15\17persist_size\2\20start_in_insert\2\14direction\15horizontal\18close_on_exit\2\17hide_numbers\1\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua"
  },
  ["nvim-transparent"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-transparent"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\2÷\2\0\0\4\0\18\0\0234\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0003\3\4\0:\3\5\2:\2\a\0012\2\0\0:\2\b\0013\2\t\0002\3\0\0:\3\n\2:\2\v\0013\2\f\0:\2\r\0013\2\14\0:\2\15\0013\2\16\0:\2\17\1>\0\2\1G\0\1\0\frainbow\1\0\2\18extended_mode\2\venable\2\fmatchip\1\0\1\venable\2\14autopairs\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\19ignore_install\fautotag\1\0\1\21ensure_installed\ball\14filetypes\1\b\0\0\thtml\15javascript\20javascriptreact\20typescriptreact\vsvelte\bvue\bxml\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  onebuddy = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/onebuddy"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  popfix = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/popfix"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["rest.nvim"] = {
    config = { "\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14rest-nvim\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/rest.nvim"
  },
  ["snippets.nvim"] = {
    config = { "\27LJ\1\2G\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\27use_suggested_mappings\rsnippets\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/snippets.nvim"
  },
  ["spellsitter.nvim"] = {
    config = { "\27LJ\1\2]\0\0\3\0\5\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0002\2\0\0:\2\4\1>\0\2\1G\0\1\0\rcaptures\1\0\1\ahl\rSpellBad\nsetup\16spellsitter\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/spellsitter.nvim"
  },
  ["sqls.nvim"] = {
    config = { "\27LJ\1\2d\0\1\3\0\5\0\t7\1\0\0)\2\2\0:\2\1\0014\1\2\0%\2\3\0>\1\2\0027\1\4\1>\1\1\1G\0\1\0\nsetup\tsqls\frequire\20execute_command\26resolved_capabilitiesZ\1\0\3\0\a\0\n4\0\0\0%\1\1\0>\0\2\0027\0\2\0007\0\3\0003\1\5\0001\2\4\0:\2\6\1>\0\2\1G\0\1\0\14on_attach\1\0\0\0\nsetup\tsqls\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/sqls.nvim"
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim"
  },
  ["telescope-fzf-writer.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/telescope-fzf-writer.nvim"
  },
  ["telescope-hop.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/telescope-hop.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/telescope-project.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\1\2»\1\0\1\5\1\n\0\0173\1\1\0+\2\0\0007\2\0\2:\2\2\1+\2\0\0007\2\3\2:\2\4\0014\2\5\0%\3\6\0>\2\2\0027\2\a\0027\2\b\0027\2\t\2\16\3\0\0\16\4\1\0>\2\3\1G\0\1\0\0À\14_hop_loop\bhop\15extensions\14telescope\frequire\18loop_callback\28send_selected_to_qflist\rcallback\1\0\0\21toggle_selectionñ\4\1\0\b\0\29\0>4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\1\3\0013\2\18\0003\3\16\0003\4\14\0003\5\6\0007\6\4\0007\a\5\0\30\6\a\6:\6\a\0054\6\b\0%\a\2\0>\6\2\0027\6\t\0067\6\n\0067\6\n\6:\6\v\0051\6\f\0:\6\r\5:\5\15\4:\4\17\3:\3\19\0023\3\21\0003\4\20\0:\4\22\0033\4\23\0:\4\n\0033\4\24\0:\4\25\3:\3\t\2>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\27\0>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\28\0>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\22\0>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\n\0>\1\2\0010\0\0€G\0\1\0\fproject\bdap\19load_extension\15fzf_writer\1\0\3\28minimum_grep_characters\3\2\20use_highlighter\2\29minimum_files_characters\3\2\1\0\2\16trace_entry\2\20reset_selection\2\bfzf\1\0\0\1\0\4\28override_generic_sorter\1\14case_mode\15smart_case\25override_file_sorter\2\nfuzzy\2\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\14<C-space>\0\n<C-h>\bhop\15extensions\6R\n<C-t>\1\0\0\16open_qflist\19send_to_qflist\nsetup\14telescope\22telescope.actions\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\1\2;\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\1\0025\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ["vim-cursorword"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-cursorword"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-dadbod"
  },
  ["vim-dadbod-completion"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-dadbod-completion"
  },
  ["vim-dadbod-ui"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui"
  },
  ["vim-interestingwords"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-interestingwords"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-translator"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-translator"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  ["which-key.nvim"] = {
    config = { '\27LJ\1\2æ\4\0\0\5\0$\0+4\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\1\3\0003\2\5\0003\3\4\0:\3\6\0023\3\a\0:\3\b\0023\3\t\0003\4\n\0:\4\v\3:\3\f\0023\3\r\0:\3\14\0023\3\15\0:\3\16\0023\3\17\0:\3\18\0023\3\19\0:\3\20\0023\3\21\0:\3\22\0023\3\23\0:\3\24\0023\3\25\0:\3\26\0023\3\27\0:\3\28\0023\3\29\0:\3\30\0023\3\31\0:\3 \0023\3!\0:\3"\0023\3#\0>\1\3\1G\0\1\0\1\0\1\vprefix\r<leader>\6g\1\0\1\tname\15Git Action\6p\1\0\1\tname\27Paste System Clipboard\6w\1\0\1\tname\14Workspace\6t\1\0\1\tname\14Translate\6s\1\0\1\tname\29Session Dashboard Action\6r\1\0\1\tname\22Rename & RestNvim\6o\1\0\1\tname\29Operate Dashboard Action\6m\1\0\1\tname\rMarkdown\6l\1\0\1\tname\20List Of Trouble\6x\1\0\1\tname\25Close Current Buffer\6d\1\0\1\tname\bDAP\6c\6j\1\0\1\tname\21Java Code Action\1\0\1\tname\16Code Action\6b\1\0\1\tname\19Buffer Operate\6f\1\0\0\1\0\1\tname\18Find & Format\rregister\nsetup\14which-key\frequire\0' },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\1\2Š\1\0\0\4\0\6\0\n3\0\0\0003\1\1\0004\2\2\0007\2\3\0027\2\4\2'\3\0\0>\2\2\2;\2\2\1:\1\5\0H\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\4\0\0\21--stdin-filepath\0\19--single-quote\1\0\2\nstdin\2\bexe\rprettierD\0\0\2\0\3\0\0043\0\0\0003\1\1\0:\1\2\0H\0\2\0\targs\1\2\0\0\18--emit=stdout\1\0\2\nstdin\2\bexe\frustfmtJ\0\0\2\0\3\0\0043\0\0\0003\1\1\0:\1\2\0H\0\2\0\targs\1\3\0\0\19--indent-width\3\2\1\0\2\nstdin\2\bexe\15lua-format¢\1\1\0\5\0\f\0\0214\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\5\0002\3\3\0001\4\4\0;\4\1\3:\3\6\0022\3\3\0001\4\a\0;\4\1\3:\3\b\0022\3\3\0001\4\t\0;\4\1\3:\3\n\2:\2\v\1>\0\2\1G\0\1\0\rfiletype\blua\0\trust\0\15javascript\1\0\0\0\1\0\1\flogging\1\nsetup\14formatter\frequire\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\1\2÷\2\0\0\4\0\18\0\0234\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0003\3\4\0:\3\5\2:\2\a\0012\2\0\0:\2\b\0013\2\t\0002\3\0\0:\3\n\2:\2\v\0013\2\f\0:\2\r\0013\2\14\0:\2\15\0013\2\16\0:\2\17\1>\0\2\1G\0\1\0\frainbow\1\0\2\18extended_mode\2\venable\2\fmatchip\1\0\1\venable\2\14autopairs\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\19ignore_install\fautotag\1\0\1\21ensure_installed\ball\14filetypes\1\b\0\0\thtml\15javascript\20javascriptreact\20typescriptreact\vsvelte\bvue\bxml\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring('\27LJ\1\2æ\4\0\0\5\0$\0+4\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\1\3\0003\2\5\0003\3\4\0:\3\6\0023\3\a\0:\3\b\0023\3\t\0003\4\n\0:\4\v\3:\3\f\0023\3\r\0:\3\14\0023\3\15\0:\3\16\0023\3\17\0:\3\18\0023\3\19\0:\3\20\0023\3\21\0:\3\22\0023\3\23\0:\3\24\0023\3\25\0:\3\26\0023\3\27\0:\3\28\0023\3\29\0:\3\30\0023\3\31\0:\3 \0023\3!\0:\3"\0023\3#\0>\1\3\1G\0\1\0\1\0\1\vprefix\r<leader>\6g\1\0\1\tname\15Git Action\6p\1\0\1\tname\27Paste System Clipboard\6w\1\0\1\tname\14Workspace\6t\1\0\1\tname\14Translate\6s\1\0\1\tname\29Session Dashboard Action\6r\1\0\1\tname\22Rename & RestNvim\6o\1\0\1\tname\29Operate Dashboard Action\6m\1\0\1\tname\rMarkdown\6l\1\0\1\tname\20List Of Trouble\6x\1\0\1\tname\25Close Current Buffer\6d\1\0\1\tname\bDAP\6c\6j\1\0\1\tname\21Java Code Action\1\0\1\tname\16Code Action\6b\1\0\1\tname\19Buffer Operate\6f\1\0\0\1\0\1\tname\18Find & Format\rregister\nsetup\14which-key\frequire\0', "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: sqls.nvim
time([[Config for sqls.nvim]], true)
try_loadstring("\27LJ\1\2d\0\1\3\0\5\0\t7\1\0\0)\2\2\0:\2\1\0014\1\2\0%\2\3\0>\1\2\0027\1\4\1>\1\1\1G\0\1\0\nsetup\tsqls\frequire\20execute_command\26resolved_capabilitiesZ\1\0\3\0\a\0\n4\0\0\0%\1\1\0>\0\2\0027\0\2\0007\0\3\0003\1\5\0001\2\4\0:\2\6\1>\0\2\1G\0\1\0\14on_attach\1\0\0\0\nsetup\tsqls\14lspconfig\frequire\0", "config", "sqls.nvim")
time([[Config for sqls.nvim]], false)
-- Config for: rest.nvim
time([[Config for rest.nvim]], true)
try_loadstring("\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14rest-nvim\frequire\0", "config", "rest.nvim")
time([[Config for rest.nvim]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
try_loadstring("\27LJ\1\2u\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\1G\0\1\0\15file_panel\1\0\2\nwidth\3#\14use_icons\2\1\0\1\18diff_binaries\1\nsetup\rdiffview\frequire\0", "config", "diffview.nvim")
time([[Config for diffview.nvim]], false)
-- Config for: snippets.nvim
time([[Config for snippets.nvim]], true)
try_loadstring("\27LJ\1\2G\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\27use_suggested_mappings\rsnippets\frequire\0", "config", "snippets.nvim")
time([[Config for snippets.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\1\0025\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\1\2/\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\20plugins.eviline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\1\2ž\1\0\0\2\0\6\0\r4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\0014\0\0\0%\1\4\0>\0\2\0027\0\2\0003\1\5\0>\0\2\1G\0\1\0\1\0\2\17map_complete\2\vmap_cr\2$nvim-autopairs.completion.compe\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: hop
time([[Config for hop]], true)
try_loadstring("\27LJ\1\0021\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\bhop\frequire\0", "config", "hop")
time([[Config for hop]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\1\2}\0\4\14\0\a\0\21%\4\0\0004\5\1\0\16\6\2\0>\5\2\4D\b\r€\a\b\2\0T\n\2€%\n\3\0T\v\5€\a\b\4\0T\n\2€%\n\5\0T\v\1€%\n\6\0\16\v\4\0\16\f\n\0\16\r\t\0$\4\r\vB\b\3\3N\bñH\4\2\0\bïª\bï±\fwarning\bï—\nerror\npairs\6 Ã\1\1\0\4\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0001\3\4\0:\3\5\2:\2\a\1>\0\2\1G\0\1\0\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\20show_close_icon\1\22show_buffer_icons\2\16diagnostics\rnvim_lsp\28show_buffer_close_icons\1\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\1\0023\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\ndapui\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: lsp-rooter.nvim
time([[Config for lsp-rooter.nvim]], true)
try_loadstring("\27LJ\1\0028\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\15lsp-rooter\frequire\0", "config", "lsp-rooter.nvim")
time([[Config for lsp-rooter.nvim]], false)
-- Config for: nvim-compe
time([[Config for nvim-compe]], true)
try_loadstring("\27LJ\1\2F\0\1\6\0\3\0\b4\1\0\0007\1\1\0017\1\2\1\16\2\0\0)\3\2\0)\4\2\0)\5\2\0@\1\5\0\27nvim_replace_termcodes\bapi\bvim›\1\0\0\5\0\b\2\0284\0\0\0007\0\1\0007\0\2\0%\1\3\0>\0\2\2\21\0\0\0\b\0\1\0T\1\18€4\1\0\0007\1\1\0017\1\4\1%\2\3\0>\1\2\2\16\2\1\0007\1\5\1\16\3\0\0\16\4\0\0>\1\4\2\16\2\1\0007\1\6\1%\3\a\0>\1\3\2\v\1\0\0T\1\2€)\1\1\0T\2\1€)\1\2\0H\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0î\1\0\0\2\2\b\1\"4\0\0\0007\0\1\0007\0\2\0>\0\1\2\t\0\0\0T\0\4€+\0\0\0%\1\3\0@\0\2\0T\0\23€4\0\0\0007\0\1\0007\0\4\0'\1\1\0>\0\2\2\t\0\0\0T\0\4€+\0\0\0%\1\5\0@\0\2\0T\0\f€+\0\1\0>\0\1\2\15\0\0\0T\1\4€+\0\0\0%\1\6\0@\0\2\0T\0\4€4\0\0\0007\0\1\0007\0\a\0@\0\1\0G\0\1\0\0À\1À\19compe#complete\n<Tab>!<Plug>(vsnip-expand-or-jump)\20vsnip#available\n<C-n>\15pumvisible\afn\bvim\2µ\1\0\0\2\1\a\1\0254\0\0\0007\0\1\0007\0\2\0>\0\1\2\t\0\0\0T\0\4€+\0\0\0%\1\3\0@\0\2\0T\0\14€4\0\0\0007\0\1\0007\0\4\0'\1ÿÿ>\0\2\2\t\0\0\0T\0\4€+\0\0\0%\1\5\0@\0\2\0T\0\3€+\0\0\0%\1\6\0@\0\2\0G\0\1\0\0À\f<S-Tab>\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\n<C-p>\15pumvisible\afn\bvim\2…\a\1\0\a\0#\1>1\0\0\0001\1\1\0004\2\2\0001\3\4\0:\3\3\0024\2\2\0001\3\6\0:\3\5\0024\2\a\0007\2\b\0027\2\t\2%\3\n\0%\4\v\0%\5\f\0003\6\r\0>\2\5\0014\2\a\0007\2\b\0027\2\t\2%\3\14\0%\4\v\0%\5\f\0003\6\15\0>\2\5\0014\2\a\0007\2\b\0027\2\t\2%\3\n\0%\4\16\0%\5\17\0003\6\18\0>\2\5\0014\2\a\0007\2\b\0027\2\t\2%\3\14\0%\4\16\0%\5\17\0003\6\19\0>\2\5\0014\2\20\0%\3\21\0>\2\2\0027\2\22\0023\3\23\0003\4\25\0003\5\24\0:\5\26\0044\5\27\0007\5\28\0054\6\a\0007\6\29\0067\6\30\6\22\6\0\6>\5\2\2:\5\31\4:\4 \0033\4!\0:\4\"\3>\2\2\0010\0\0€G\0\1\0\vsource\1\0\t\14ultisnips\2\rnvim_lsp\2\nvsnip\2\tpath\2\rnvim_lua\2\vbuffer\2\tcalc\2\ftabnine\2\fluasnip\2\18documentation\15max_height\nlines\6o\nfloor\tmath\vborder\1\0\4\17winhighlightHNormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder\15min_height\3\1\14min_width\3<\14max_width\3x\1\t\0\0\5\5\5\6 \5\5\5\6 \1\0\f\20resolve_timeout\3 \6\19source_timeout\3È\1\fenabled\2\ndebug\1\14preselect\venable\19max_abbr_width\3d\21incomplete_delay\3\3\17autocomplete\2\19max_kind_width\3d\15min_length\3\1\18throttle_time\3P\19max_menu_width\3d\nsetup\ncompe\frequire\1\0\1\texpr\2\1\0\1\texpr\2\27v:lua.s_tab_complete()\f<S-Tab>\1\0\1\texpr\2\6s\1\0\1\texpr\2\25v:lua.tab_complete()\n<Tab>\6i\20nvim_set_keymap\bapi\bvim\0\19s_tab_complete\0\17tab_complete\a_G\0\0çÌ™³\6³æÌþ\3\0", "config", "nvim-compe")
time([[Config for nvim-compe]], false)
-- Config for: spellsitter.nvim
time([[Config for spellsitter.nvim]], true)
try_loadstring("\27LJ\1\2]\0\0\3\0\5\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0002\2\0\0:\2\4\1>\0\2\1G\0\1\0\rcaptures\1\0\1\ahl\rSpellBad\nsetup\16spellsitter\frequire\0", "config", "spellsitter.nvim")
time([[Config for spellsitter.nvim]], false)
-- Config for: lspkind-nvim
time([[Config for lspkind-nvim]], true)
try_loadstring("\27LJ\1\2Ò\2\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\1G\0\1\0\15symbol_map\1\0\20\tText\bî˜’\rFunction\bï‚š\nClass\bîƒ\nColor\bîˆ«\14Interface\bï°®\vModule\bï£–\rConstant\bîˆ¬\vMethod\aÆ’\tUnit\bï‘µ\15EnumMember\bï…\rProperty\bî˜¤\vStruct\bïƒŠ\rVariable\bîž›\fSnippet\bï¬Œ\vFolder\bï„•\tFile\bï…›\nValue\bï¢Ÿ\16Constructor\bîˆ\tEnum\bäº†\fKeyword\bï …\1\0\2\vpreset\rcodicons\14with_text\2\tinit\flspkind\frequire\0", "config", "lspkind-nvim")
time([[Config for lspkind-nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\1\2Ò\a\0\0\4\0\n\0\r4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0003\3\5\0:\3\6\0023\3\a\0:\3\b\2:\2\t\1>\0\2\1G\0\1\0\fkeymaps\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\1\0\v\17n <leader>gb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17v <leader>gsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>gp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17v <leader>grT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\fnoremap\2\17n <leader>gs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\1\0\2\29current_line_blame_delay\3ô\3\23current_line_blame\2\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-lsputils
time([[Config for nvim-lsputils]], true)
try_loadstring("\27LJ\1\0020\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\21plugins.lsputils\frequire\0", "config", "nvim-lsputils")
time([[Config for nvim-lsputils]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\1\2;\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\1\2»\1\0\1\5\1\n\0\0173\1\1\0+\2\0\0007\2\0\2:\2\2\1+\2\0\0007\2\3\2:\2\4\0014\2\5\0%\3\6\0>\2\2\0027\2\a\0027\2\b\0027\2\t\2\16\3\0\0\16\4\1\0>\2\3\1G\0\1\0\0À\14_hop_loop\bhop\15extensions\14telescope\frequire\18loop_callback\28send_selected_to_qflist\rcallback\1\0\0\21toggle_selectionñ\4\1\0\b\0\29\0>4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\1\3\0013\2\18\0003\3\16\0003\4\14\0003\5\6\0007\6\4\0007\a\5\0\30\6\a\6:\6\a\0054\6\b\0%\a\2\0>\6\2\0027\6\t\0067\6\n\0067\6\n\6:\6\v\0051\6\f\0:\6\r\5:\5\15\4:\4\17\3:\3\19\0023\3\21\0003\4\20\0:\4\22\0033\4\23\0:\4\n\0033\4\24\0:\4\25\3:\3\t\2>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\27\0>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\28\0>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\22\0>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\n\0>\1\2\0010\0\0€G\0\1\0\fproject\bdap\19load_extension\15fzf_writer\1\0\3\28minimum_grep_characters\3\2\20use_highlighter\2\29minimum_files_characters\3\2\1\0\2\16trace_entry\2\20reset_selection\2\bfzf\1\0\0\1\0\4\28override_generic_sorter\1\14case_mode\15smart_case\25override_file_sorter\2\nfuzzy\2\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\14<C-space>\0\n<C-h>\bhop\15extensions\6R\n<C-t>\1\0\0\16open_qflist\19send_to_qflist\nsetup\14telescope\22telescope.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-toggleterm.lua
time([[Config for nvim-toggleterm.lua]], true)
try_loadstring("\27LJ\1\2Õ\1\0\0\3\0\a\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0004\2\4\0007\2\5\0027\2\6\2:\2\6\1>\0\2\1G\0\1\0\nshell\6o\bvim\1\0\b\20shade_terminals\2\20insert_mappings\1\tsize\3\15\17persist_size\2\20start_in_insert\2\14direction\15horizontal\18close_on_exit\2\17hide_numbers\1\nsetup\15toggleterm\frequire\0", "config", "nvim-toggleterm.lua")
time([[Config for nvim-toggleterm.lua]], false)
-- Config for: nvim-lspinstall
time([[Config for nvim-lspinstall]], true)
try_loadstring("\27LJ\1\2A\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1À\24nvim_buf_set_keymap\bapi\bvimA\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1À\24nvim_buf_set_option\bapi\bvim£\22\1\2\t\1L\0Ö\0011\2\0\0001\3\1\0007\4\2\0\a\4\3\0T\4\16€4\4\4\0%\5\5\0>\4\2\0027\4\6\4>\4\1\0014\4\4\0%\5\a\0>\4\2\0027\4\b\0043\5\t\0>\4\2\0014\4\4\0%\5\n\0>\4\2\0027\4\v\4>\4\1\1\16\4\3\0%\5\f\0%\6\r\0>\4\3\1\16\4\2\0%\5\14\0%\6\15\0%\a\16\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6\17\0%\a\18\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6\19\0%\a\20\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6\21\0%\a\22\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6\23\0%\a\24\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6\25\0%\a\26\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6\27\0%\a\28\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6\29\0%\a\30\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6\31\0%\a \0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6!\0%\a\"\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6#\0%\a$\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6%\0%\a&\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6'\0%\a(\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6)\0%\a*\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6+\0%\a,\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6-\0%\a.\0+\b\0\0>\4\5\1\16\4\2\0%\5/\0%\6-\0%\a0\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\0061\0%\a2\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\0063\0%\a4\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\0065\0%\a6\0+\b\0\0>\4\5\1\16\4\2\0%\5/\0%\0065\0%\a7\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\0068\0%\a9\0+\b\0\0>\4\5\1\16\4\2\0%\5/\0%\0068\0%\a:\0+\b\0\0>\4\5\1\16\4\2\0%\5/\0%\6;\0%\a<\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6=\0%\a>\0+\b\0\0>\4\5\1\16\4\2\0%\5\14\0%\6?\0%\a@\0+\b\0\0>\4\5\0017\4A\0007\4B\4\15\0\4\0T\5\a€\16\4\2\0%\5\14\0%\6C\0%\aD\0+\b\0\0>\4\5\1T\4\n€7\4A\0007\4E\4\15\0\4\0T\5\6€\16\4\2\0%\5\14\0%\6C\0%\aF\0+\b\0\0>\4\5\0017\4A\0007\4G\4\15\0\4\0T\5\6€4\4H\0007\4I\0047\4J\4%\5K\0)\6\1\0>\4\3\0010\0\0€G\0\1\0\1ÀÝ\1    augroup lsp_document_highlight\n    autocmd! * <buffer>\n    autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n    autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n    augroup END\n    \14nvim_exec\bapi\bvim\23document_highlight0<cmd>lua vim.lsp.buf.range_formatting()<CR>\30document_range_formatting*<cmd>lua vim.lsp.buf.formatting()<CR>\15<leader>fm\24document_formatting\26resolved_capabilities8<Cmd>lua require('jdtls').test_nearest_method()<CR>\16<leader>cjn/<Cmd>lua require('jdtls').test_class()<CR>\16<leader>cjt7<Cmd>lua require('jdtls').extract_method(true)<CR>\15<leader>cm9<Cmd>lua require('jdtls').extract_constant(true)<CR>5<Cmd>lua require('jdtls').extract_constant()<CR>\15<leader>ct9<Cmd>lua require('jdtls').extract_variable(true)<CR>5<Cmd>lua require('jdtls').extract_variable()<CR>\15<leader>cv5<Cmd>lua require('jdtls').organize_imports()<CR>\15<leader>coA<Cmd>lua require('jdtls').code_action(false, 'refactor')<CR>\15<leader>cr4<Cmd>lua require('jdtls').code_action(true)<CR>\6v0<Cmd>lua require('jdtls').code_action()<CR>\15<leader>ca2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\14<leader>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\14<leader>e*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<leader>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<Cmd>lua vim.lsp.buf.hover()<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\27v:lua.vim.lsp.omnifunc\romnifunc\17add_commands\16jdtls.setup\1\0\1\19hotcodereplace\tauto\14setup_dap\njdtls!setup_dap_main_class_configs\14jdtls.dap\frequire\tjava\tname\0\0¥\2\0\0\4\1\15\0\0224\0\0\0007\0\1\0007\0\2\0007\0\3\0>\0\1\0027\1\4\0007\1\5\0017\1\6\1)\2\2\0:\2\a\0017\1\4\0007\1\5\0017\1\6\0013\2\n\0003\3\t\0:\3\v\2:\2\b\0013\1\f\0:\0\r\1+\2\0\0:\2\14\1H\1\2\0\2À\14on_attach\17capabilities\1\0\0\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim³\4\0\0\t\1\25\0E4\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\0\3\0>\0\1\0024\1\4\0007\1\5\1\16\2\0\0%\3\6\0>\1\3\0014\1\4\0007\1\5\1\16\2\0\0%\3\a\0>\1\3\0014\1\b\0\16\2\0\0>\1\2\4D\4*€+\6\0\0>\6\1\2\a\5\t\0T\a\4€4\a\0\0%\b\v\0>\a\2\2:\a\n\6\a\5\a\0T\a\2€3\a\r\0:\a\f\6\a\5\6\0T\a\2€3\a\14\0:\a\f\6\a\5\15\0T\a\17€4\a\0\0%\b\16\0>\a\2\0027\b\17\a:\b\17\0067\b\n\a:\b\n\0067\b\18\a:\b\18\0067\b\19\a:\b\19\0067\b\20\a:\b\20\0063\b\21\0:\b\f\0063\b\23\0:\b\22\0064\a\0\0%\b\24\0>\a\2\0026\a\5\a7\a\2\a\16\b\6\0>\a\2\1B\4\3\3N\4ÔG\0\1\0\3À\14lspconfig\1\0\1\27allow_incremental_sync\2\nflags\1\2\0\0\tjava\bcmd\17capabilities\fon_init\17init_options\22lsp.java.settings\tjava\1\3\0\0\6c\bcpp\1\4\0\0\nswift\16objective-c\18objective-cpp\14filetypes\21lsp.lua.settings\rsettings\blua\npairs\14sourcekit\vclangd\vinsert\ntable\22installed_servers\nsetup\15lspinstall\frequireG\0\0\2\1\4\0\b+\0\0\0007\0\0\0>\0\1\0014\0\1\0007\0\2\0%\1\3\0>\0\2\1G\0\1\0\0À\fbufdo e\bcmd\bvim\18setup_serversŽ\1\1\0\6\0\t\0\0152\0\0\0003\1\0\0001\2\1\0001\3\2\0001\4\4\0:\4\3\0007\4\3\0>\4\1\0014\4\5\0%\5\6\0>\4\2\0021\5\b\0:\5\a\0040\0\0€G\0\1\0\0\22post_install_hook\15lspinstall\frequire\0\18setup_servers\0\0\1\0\2\vsilent\2\fnoremap\2\0", "config", "nvim-lspinstall")
time([[Config for nvim-lspinstall]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
