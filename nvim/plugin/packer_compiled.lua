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
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-look"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/cmp-look"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/cmp-spell"
  },
  ["cmp-tabnine"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/cmp-tabnine"
  },
  ["cmp-treesitter"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/cmp-treesitter"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/cmp-vsnip"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["diffview.nvim"] = {
    config = { "\27LJ\1\2u\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\1G\0\1\0\15file_panel\1\0\1\nwidth\3#\1\0\2\18diff_binaries\1\14use_icons\2\nsetup\rdiffview\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/diffview.nvim"
  },
  firenvim = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/firenvim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\1\2Š\1\0\0\4\0\6\0\n3\0\0\0003\1\1\0004\2\2\0007\2\3\0027\2\4\2'\3\0\0>\2\2\2;\2\2\1:\1\5\0H\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\4\0\0\21--stdin-filepath\0\19--single-quote\1\0\2\nstdin\2\bexe\rprettierD\0\0\2\0\3\0\0043\0\0\0003\1\1\0:\1\2\0H\0\2\0\targs\1\2\0\0\18--emit=stdout\1\0\2\nstdin\2\bexe\frustfmtJ\0\0\2\0\3\0\0043\0\0\0003\1\1\0:\1\2\0H\0\2\0\targs\1\3\0\0\19--indent-width\3\2\1\0\2\nstdin\2\bexe\15lua-format¢\1\1\0\5\0\f\0\0214\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\5\0002\3\3\0001\4\4\0;\4\1\3:\3\6\0022\3\3\0001\4\a\0;\4\1\3:\3\b\0022\3\3\0001\4\t\0;\4\1\3:\3\n\2:\2\v\1>\0\2\1G\0\1\0\rfiletype\blua\0\trust\0\15javascript\1\0\0\0\1\0\1\flogging\1\nsetup\14formatter\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\2â\a\0\0\4\0\f\0\0154\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\0013\2\6\0003\3\a\0:\3\b\0023\3\t\0:\3\n\2:\2\v\1>\0\2\1G\0\1\0\fkeymaps\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\1\0\v\17n <leader>gb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17v <leader>gsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>gp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17v <leader>grT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\fnoremap\2\17n <leader>gs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\28current_line_blame_opts\1\0\1\ndelay\3ô\3\1\0\1\23current_line_blame\2\nsetup\rgitsigns\frequire\0" },
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
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\1\2ˆ\1\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\17handler_opts\1\0\2\16hint_prefix\tîž› \15toggle_key\n<M-s>\1\0\1\vborder\tnone\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    config = { "\27LJ\1\2Ù\2\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\1G\0\1\0\15symbol_map\1\0\21\tText\bî˜’\rFunction\bï‚š\nClass\bîƒ\nColor\bîˆ«\14Interface\bï°®\vModule\bï£–\rConstant\bîˆ¬\vMethod\aÆ’\tUnit\bï‘µ\15EnumMember\bï…\vFolder\bï„•\rProperty\bî˜¤\vStruct\bïƒŠ\rVariable\bîž›\fSnippet\bï¬Œ\aDB\bîœ†\tFile\bï…›\nValue\bï¢Ÿ\16Constructor\bîˆ\tEnum\bäº†\fKeyword\bï …\1\0\2\vpreset\rcodicons\14with_text\2\tinit\flspkind\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\2\\\0\0\3\0\5\1\0154\0\0\0007\0\1\0007\0\2\0004\1\0\0007\1\1\0017\1\3\1%\2\4\0>\1\2\0=\0\0\2\t\0\0\0T\0\2€)\0\1\0T\1\1€)\0\2\0H\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\2\0\3\0\f4\0\0\0007\0\1\0007\0\2\0'\1\0\0>\0\2\2'\1P\0\0\1\0\0T\0\2€)\0\1\0T\1\1€)\0\2\0H\0\2\0\rwinwidth\afn\bvim–\1\0\0\5\0\a\0\0274\0\0\0007\0\1\0007\0\2\0%\1\3\0>\0\2\0024\1\0\0007\1\1\0017\1\4\1%\2\5\0\16\3\0\0%\4\6\0$\3\4\3>\1\3\2\r\2\1\0T\2\v€\19\2\1\0'\3\0\0\1\3\2\0T\2\4€\19\2\1\0\19\3\0\0\0\2\3\0T\2\2€)\2\1\0T\3\1€)\2\2\0H\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvimI\0\1\4\1\4\0\b4\1\0\0007\1\1\1+\2\0\0007\2\2\0027\2\3\2\16\3\0\0>\1\3\1G\0\1\0\3À\14lualine_c\rsections\vinsert\ntableI\0\1\4\1\4\0\b4\1\0\0007\1\1\1+\2\0\0007\2\2\0027\2\3\2\16\3\0\0>\1\3\1G\0\1\0\3À\14lualine_x\rsections\vinsert\ntable\19\0\0\1\0\1\0\2%\0\0\0H\0\2\0\bâ–Šã\3\0\0\6\1&\0M3\0\1\0+\1\0\0007\1\0\1:\1\2\0+\1\0\0007\1\3\1:\1\4\0+\1\0\0007\1\5\1:\1\6\0+\1\0\0007\1\5\1:\1\a\0+\1\0\0007\1\5\1:\1\b\0+\1\0\0007\1\t\1:\1\n\0+\1\0\0007\1\0\1:\1\v\0+\1\0\0007\1\f\1:\1\r\0+\1\0\0007\1\f\1:\1\14\0+\1\0\0007\1\f\1:\1\15\0+\1\0\0007\1\16\1:\1\17\0+\1\0\0007\1\18\1:\1\19\0+\1\0\0007\1\18\1:\1\20\0+\1\0\0007\1\0\1:\1\21\0+\1\0\0007\1\0\1:\1\22\0+\1\0\0007\1\23\1:\1\24\0+\1\0\0007\1\23\1:\1\25\0+\1\0\0007\1\23\1:\1\26\0+\1\0\0007\1\0\1:\1\27\0+\1\0\0007\1\0\1:\1\28\0004\1\29\0007\1\30\0017\1\31\1%\2 \0004\3\29\0007\3!\0037\3\"\3>\3\1\0026\3\3\0%\4#\0+\5\0\0007\5$\5$\2\5\2>\1\2\1%\1%\0H\1\2\0\1À\bïŒŒ\abg\f guibg=\tmode\afn\27hi! LualineMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\vviolet\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\bred \1\0\1\b\0\b\2\0254\1\0\0007\1\1\0017\1\2\1\16\2\0\0>\1\2\2'\2\0\0\3\1\2\0T\2\2€%\2\3\0H\2\2\0003\2\4\0'\3\1\0'\4\0\4\1\4\1\0T\4\4€Q\4\3€\23\1\0\1\20\3\1\3T\4ù4\4\5\0007\4\6\4%\5\a\0\16\6\1\0006\a\3\2@\4\4\0\v%.1f%s\vformat\vstring\1\5\0\0\6b\6k\6m\6g\5\rgetfsize\afn\bvim€\16\2s\1\0\4\0\b\1\0191\0\0\0004\1\1\0007\1\2\0017\1\3\1%\2\4\0>\1\2\0024\2\5\0007\2\6\2\16\3\1\0>\2\2\2\t\2\0\0T\2\3€%\2\a\0000\0\0€H\2\2\0\16\2\0\0\16\3\1\0000\0\0€@\2\2\0\5\blen\vstring\b%:p\vexpand\afn\bvim\0\0\18\0\0\1\0\1\0\2%\0\0\0H\0\2\0\a%=™\2\0\0\f\0\14\1&%\0\0\0004\1\1\0007\1\2\0017\1\3\1'\2\0\0%\3\4\0>\1\3\0024\2\1\0007\2\5\0027\2\6\2>\2\1\0024\3\a\0\16\4\2\0>\3\2\2\v\3\0\0T\3\1€H\0\2\0004\3\b\0\16\4\2\0>\3\2\4T\6\14€7\b\t\a7\b\n\b\15\0\b\0T\t\n€4\t\1\0007\t\v\t7\t\f\t\16\n\b\0\16\v\1\0>\t\3\2\b\t\0\0T\t\2€7\t\r\aH\t\2\0A\6\3\3N\6ðH\0\2\0\tname\nindex\afn\14filetypes\vconfig\vipairs\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\18No Active Lspþÿÿÿ\31\19\0\0\1\0\1\0\2%\0\0\0H\0\2\0\bâ–ŠÈ\r\1\0\n\0V\0µ\0014\0\0\0%\1\1\0>\0\2\0023\1\2\0003\2\4\0001\3\3\0:\3\5\0021\3\6\0:\3\a\0021\3\b\0:\3\t\0023\3\22\0003\4\n\0003\5\16\0003\6\14\0003\a\f\0007\b\v\1:\b\v\a7\b\r\1:\b\r\a:\a\15\6:\6\17\0053\6\19\0003\a\18\0007\b\v\1:\b\v\a7\b\r\1:\b\r\a:\a\15\6:\6\20\5:\5\21\4:\4\23\0033\4\24\0002\5\0\0:\5\25\0042\5\0\0:\5\26\0042\5\0\0:\5\27\0042\5\0\0:\5\28\0042\5\0\0:\5\29\0042\5\0\0:\5\30\4:\4\31\0033\4 \0002\5\0\0:\5\25\0042\5\0\0:\5!\0042\5\0\0:\5\27\0042\5\0\0:\5\28\0042\5\0\0:\5\29\0042\5\0\0:\5\30\4:\4\"\0031\4#\0001\5$\0\16\6\4\0003\a(\0001\b%\0;\b\1\a3\b'\0007\t&\1:\t\v\b:\b)\a>\6\2\1\16\6\4\0003\a+\0001\b*\0;\b\1\a>\6\2\1\16\6\4\0003\a-\0001\b,\0;\b\1\a7\b\5\2:\b.\a>\6\2\1\16\6\4\0003\a/\0007\b\5\2:\b.\a3\b1\0007\t0\1:\t\v\b:\b)\a>\6\2\1\16\6\4\0003\a2\0007\b\t\2:\b.\a3\b4\0007\t3\1:\t\v\b:\b)\a>\6\2\1\16\6\4\0003\a5\0003\b6\0:\b7\a7\b8\1:\b9\a7\b:\1:\b;\a7\b<\1:\b=\a7\b\a\2:\b.\a>\6\2\1\16\6\4\0002\a\3\0001\b>\0;\b\1\a>\6\2\1\16\6\4\0003\a@\0001\b?\0;\b\1\a3\bA\0007\t\v\1:\t\v\b:\b)\a>\6\2\1\16\6\5\0003\aB\0003\bC\0:\bD\a3\bE\0:\b7\a7\b<\1:\bF\a7\bG\1:\bH\a7\bI\1:\bJ\a>\6\2\1\16\6\5\0003\aK\0007\b\a\2:\b.\a3\bL\0007\t8\1:\t\v\b:\b)\a>\6\2\1\16\6\5\0003\aM\0003\bN\0007\t8\1:\t\v\b:\b)\a>\6\2\1\16\6\5\0003\aO\0>\6\2\1\16\6\5\0003\aP\0003\bQ\0007\t\v\1:\t\v\b:\b)\a>\6\2\1\16\6\5\0003\aT\0001\bR\0;\b\1\a3\bS\0007\t&\1:\t\v\b:\b)\a>\6\2\0017\6U\0\16\a\3\0>\6\2\0010\0\0€G\0\1\0\nsetup\1\0\1\18right_padding\3\0\1\0\0\0\1\0\1\bgui\tbold\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\1\bgui\tbold\1\2\2\0\15fileformat\nupper\2\18icons_enabled\1\1\0\1\bgui\tbold\1\2\1\0\15o:encoding\nupper\2\15color_info\tcyan\15color_warn\vyellow\16color_error\1\0\3\tinfo\tïª \twarn\tï± \nerror\tï— \fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\1\0\1\bgui\tbold\1\0\1\ticon\rï‚… LSP:\0\0\18color_removed\bred\19color_modified\vorange\16color_added\ngreen\fsymbols\1\0\3\nadded\tïƒ¾ \rmodified\tï§‰ \fremoved\tï…† \1\2\0\0\tdiff\1\0\1\bgui\tbold\vviolet\1\2\1\0\vbranch\ticon\bï‘¿\1\0\1\bgui\tbold\fmagenta\1\2\0\0\rfilename\14condition\1\0\0\0\1\0\2\ncolor\16LualineMode\17left_padding\3\0\0\ncolor\1\0\1\17left_padding\3\0\1\0\0\tblue\0\0\0\22inactive_sections\14lualine_v\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\1\0\0\afg\1\0\2\23section_separators\5\25component_separators\5\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\1\0\v\vviolet\f#a9a1e1\ngreen\f#98be65\tcyan\f#008080\vyellow\f#ECBE7B\rdarkblue\f#081633\abg\f#202328\fmagenta\f#c678dd\tblue\f#51afef\vorange\f#FF8800\afg\f#bbc2cf\bred\f#ec5f67\flualine\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\1\2M\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-bqf"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\1\2}\0\4\14\0\a\0\21%\4\0\0004\5\1\0\16\6\2\0>\5\2\4D\b\r€\a\b\2\0T\n\2€%\n\3\0T\v\5€\a\b\4\0T\n\2€%\n\5\0T\v\1€%\n\6\0\16\v\4\0\16\f\n\0\16\r\t\0$\4\r\vB\b\3\3N\bñH\4\2\0\bïª\bï±\fwarning\bï—\nerror\npairs\6 ¿\2\1\0\4\0\14\0\0174\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0001\3\4\0:\3\5\2:\2\a\0013\2\t\0003\3\b\0:\3\n\0023\3\v\0:\3\f\2:\2\r\1>\0\2\1G\0\1\0\15highlights\23indicator_selected\1\0\2\nguibg\f#282c34\nguifg\f#51afef\tfill\1\0\0\1\0\2\nguibg\f#202328\nguifg\f#282c34\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\20show_close_icon\1\22show_buffer_icons\2\16diagnostics\rnvim_lsp\28show_buffer_close_icons\1\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\1\2;\0\1\3\0\4\0\0064\1\0\0007\1\1\0017\1\2\0017\2\3\0>\1\2\1G\0\1\0\tbody\20vsnip#anonymous\afn\bvim¢\1\0\1\a\0\b\1\0234\1\0\0007\1\1\0017\1\2\1>\1\1\2\t\1\0\0T\1\14€4\1\0\0007\1\1\0017\1\3\0014\2\0\0007\2\4\0027\2\5\2%\3\6\0)\4\2\0)\5\2\0)\6\2\0>\2\5\2%\3\a\0>\1\3\1T\1\2€\16\1\0\0>\1\1\1G\0\1\0\6n\n<C-n>\27nvim_replace_termcodes\bapi\rfeedkeys\15pumvisible\afn\bvim\2¢\1\0\1\a\0\b\1\0234\1\0\0007\1\1\0017\1\2\1>\1\1\2\t\1\0\0T\1\14€4\1\0\0007\1\1\0017\1\3\0014\2\0\0007\2\4\0027\2\5\2%\3\6\0)\4\2\0)\5\2\0)\6\2\0>\2\5\2%\3\a\0>\1\3\1T\1\2€\16\1\0\0>\1\1\1G\0\1\0\6n\n<C-p>\27nvim_replace_termcodes\bapi\rfeedkeys\15pumvisible\afn\bvim\2½\2\0\2\5\0\n\0\0174\2\1\0%\3\2\0>\2\2\0027\2\3\0027\2\4\0027\3\0\0016\2\3\2%\3\5\0007\4\0\1$\2\4\2:\2\0\0013\2\a\0007\3\b\0007\3\t\0036\2\3\2:\2\6\1H\1\2\0\tname\vsource\1\0\n\rnvim_lsp\n[LSP]\nvsnip\f[VSnip]\16cmp_tabnine\14[Tabnine]\15treesitter\17[Treesitter]\tpath\v[Path]\tlook\v[Look]\rnvim_lua\n[Lua]\vbuffer\r[Buffer]\26vim-dadbod-completion\r[Dadbod]\18latex_symbols\f[Latex]\tmenu\6 \fdefault\fpresets\flspkind\frequire\tkind\6\1\0\b\0-\0L4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\2\3\0003\3\5\0003\4\4\0:\4\6\0033\4\b\0001\5\a\0:\5\t\4:\4\n\0033\4\r\0007\5\v\0007\5\f\5'\6\4\0>\5\2\2:\5\14\0047\5\v\0007\5\f\5'\6üÿ>\5\2\2:\5\15\0047\5\v\0007\5\16\5>\5\1\2:\5\17\0047\5\v\0007\5\18\5>\5\1\2:\5\19\0047\5\v\0007\5\20\0053\6\23\0007\a\21\0007\a\22\a:\a\24\6>\5\2\2:\5\25\0041\5\26\0:\5\27\0041\5\28\0:\5\29\4:\4\v\0032\4\t\0003\5\30\0;\5\1\0043\5\31\0;\5\2\0043\5 \0;\5\3\0043\5!\0;\5\4\0043\5\"\0;\5\5\0043\5#\0;\5\6\0043\5$\0;\5\a\0043\5%\0;\5\b\4:\4&\0033\4'\0001\5(\0:\5)\4:\4*\3>\2\2\0014\2\0\0%\3+\0>\2\2\0027\2\3\0023\3,\0>\2\2\1G\0\1\0\1\0\3\17map_complete\2\16auto_select\2\vmap_cr\2\"nvim-autopairs.completion.cmp\15formatting\vformat\0\1\0\1\15deprecated\2\fsources\1\0\1\tname\tlook\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\26vim-dadbod-completion\1\0\1\tname\15treesitter\1\0\1\tname\16cmp_tabnine\1\0\1\tname\rnvim_lsp\f<S-Tab>\0\n<Tab>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-u>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsnippet\vexpand\1\0\0\0\15completion\1\0\0\1\0\1\16completeopt\26menu,menuone,noinsert\nsetup\flspkind\bcmp\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
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
    config = { "\27LJ\1\2N\0\1\4\1\4\0\v3\1\0\0:\0\1\1+\2\0\0\16\3\0\0>\2\2\2:\2\2\1+\2\0\0\16\3\0\0>\2\2\2:\2\3\1H\1\2\0\2À\fordinal\fdisplay\nvalue\1\0\0\\\0\0\3\3\3\0\f+\0\0\0007\0\0\0+\1\1\0>\0\2\2+\1\0\0007\1\1\1+\2\1\0>\1\2\1+\1\2\0007\2\2\0>\1\2\1G\0\1\0\0\0\0À\1\0\nvalue\nclose\23get_selected_entryG\1\1\4\2\3\0\t+\1\0\0007\1\0\1\16\2\1\0007\1\1\0011\3\2\0>\1\3\1)\1\2\0000\0\0€H\1\2\0\3\0\3À\0\freplace\19select_defaultê\1\1\4\v\4\14\0\0262\4\0\0+\5\0\0007\5\0\5\16\6\4\0003\a\1\0:\1\2\a+\b\1\0007\b\3\b3\t\4\0:\0\5\t1\n\6\0:\n\a\t>\b\2\2:\b\b\a+\b\2\0007\b\t\b>\b\1\2:\b\n\a1\b\v\0:\b\f\a>\5\3\2\16\6\5\0007\5\r\5>\5\2\0010\0\0€G\0\1\0\3À\0À\1À\2À\tfind\20attach_mappings\0\vsorter\29get_generic_fuzzy_sorter\vfinder\16entry_maker\0\fresults\1\0\0\14new_table\17prompt_title\1\0\0\bnew¼\1\1\0\6\0\b\0\0194\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0024\2\0\0%\3\3\0>\2\2\0024\3\0\0%\4\4\0>\3\2\0024\4\0\0%\5\5\0>\4\2\0021\5\a\0:\5\6\0040\0\0€G\0\1\0\0\19pick_one_async\rjdtls.ui\22telescope.pickers\22telescope.actions\22telescope.sorters\22telescope.finders\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { "\27LJ\1\2@\0\2\5\0\3\0\b4\2\0\0%\3\1\0>\2\2\0027\2\2\2\16\3\0\0\16\4\1\0>\2\3\1G\0\1\0\nsetup\15lsp.common\frequireê\2\0\0\4\1\18\0\0294\0\0\0007\0\1\0007\0\2\0007\0\3\0>\0\1\0024\1\4\0%\2\5\0>\1\2\0027\1\6\1\16\2\0\0>\1\2\2\16\0\1\0007\1\a\0007\1\b\0017\1\t\1)\2\2\0:\2\n\0017\1\a\0007\1\b\0017\1\t\0013\2\r\0003\3\f\0:\3\14\2:\2\v\0013\1\15\0:\0\16\1+\2\0\0:\2\17\1H\1\2\0\1À\14on_attach\17capabilities\1\0\0\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\24update_capabilities\17cmp_nvim_lsp\frequire\29make_client_capabilities\rprotocol\blsp\bvimÊ\4\0\0\n\1\21\0;4\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\0\3\0>\0\1\0024\1\4\0007\1\5\1\16\2\0\0%\3\6\0>\1\3\0014\1\4\0007\1\5\1\16\2\0\0%\3\a\0>\1\3\0014\1\b\0\16\2\0\0>\1\2\4D\4 €+\6\0\0>\6\1\2\a\5\t\0T\a\4€4\a\0\0%\b\v\0>\a\2\2:\a\n\6\a\5\a\0T\a\2€3\a\r\0:\a\f\6\a\5\6\0T\a\2€3\a\14\0:\a\f\6\6\5\15\0T\a\b€4\a\0\0%\b\16\0>\a\2\0026\a\5\a7\a\2\a\16\b\6\0>\a\2\1T\a\6€4\a\17\0007\a\18\a7\a\19\a%\b\20\0)\t\1\0>\a\3\1B\4\3\3N\4ÞG\0\1\0\2À’\1        augroup jdtls_lsp\n          autocmd!\n          autocmd FileType java lua require('lsp.java.jdtls').setup()\n        augroup end\n      \14nvim_exec\bapi\bvim\14lspconfig\tjava\1\3\0\0\6c\bcpp\1\4\0\0\nswift\16objective-c\18objective-cpp\14filetypes\21lsp.lua.settings\rsettings\blua\npairs\14sourcekit\vclangd\vinsert\ntable\22installed_servers\nsetup\15lspinstall\frequireG\0\0\2\1\4\0\b+\0\0\0007\0\0\0>\0\1\0014\0\1\0007\0\2\0%\1\3\0>\0\2\1G\0\1\0\0À\fbufdo e\bcmd\bvim\18setup_serversv\1\0\5\0\b\0\0142\0\0\0001\1\0\0001\2\1\0001\3\3\0:\3\2\0007\3\2\0>\3\1\0014\3\4\0%\4\5\0>\3\2\0021\4\a\0:\4\6\0030\0\0€G\0\1\0\0\22post_install_hook\15lspinstall\frequire\0\18setup_servers\0\0\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
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
  ["nvim-treesitter"] = {
    config = { '\27LJ\1\2Ê\6\0\0\5\0$\0+4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0003\3\4\0:\3\5\2:\2\a\0012\2\0\0:\2\b\0013\2\t\0002\3\0\0:\3\n\2:\2\v\0013\2\f\0:\2\r\0013\2\14\0:\2\15\0013\2\16\0:\2\17\0013\2\19\0003\3\18\0:\3\20\0023\3\21\0:\3\22\0023\3\23\0003\4\24\0:\4\25\3:\3\26\0023\3\27\0003\4\28\0:\4\25\3:\3\29\2:\2\30\0013\2!\0003\3\31\0003\4 \0:\4\25\3:\3"\2:\2#\1>\0\2\1G\0\1\0\16textobjects\vselect\1\0\0\1\0\4\aif\20@function.inner\aaf\20@function.outer\aac\17@class.outer\aic\17@class.inner\1\0\2\14lookahead\2\venable\2\rrefactor\15navigation\1\0\5\24goto_previous_usage\n<a-#>\20goto_definition\bgnd\21list_definitions\bgnD\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\1\0\1\venable\2\17smart_rename\fkeymaps\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\fmatchip\1\0\1\venable\2\14autopairs\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\19ignore_install\fautotag\1\0\1\21ensure_installed\ball\14filetypes\1\b\0\0\thtml\15javascript\20javascriptreact\20typescriptreact\vsvelte\bvue\bxml\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0' },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor"
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
  ["onedark.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\1\2Ë\1\0\0\3\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0013\2\6\0:\2\a\1>\0\2\1G\0\1\0\rpatterns\1\b\0\0\t.git\v_darcs\b.hg\t.bzr\t.svn\rMakefile\17package.json\22detection_methods\1\0\2\16show_hidden\2\17silent_chdir\1\1\3\0\0\blsp\fpattern\nsetup\17project_nvim\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/project.nvim"
  },
  ["rest.nvim"] = {
    config = { "\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14rest-nvim\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/rest.nvim"
  },
  rnvimr = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/rnvimr"
  },
  ["spellsitter.nvim"] = {
    config = { "\27LJ\1\2]\0\0\3\0\5\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0002\2\0\0:\2\4\1>\0\2\1G\0\1\0\rcaptures\1\0\1\ahl\rSpellBad\nsetup\16spellsitter\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/spellsitter.nvim"
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
  ["telescope.nvim"] = {
    config = { "\27LJ\1\2»\1\0\1\5\1\n\0\0173\1\1\0+\2\0\0007\2\0\2:\2\2\1+\2\0\0007\2\3\2:\2\4\0014\2\5\0%\3\6\0>\2\2\0027\2\a\0027\2\b\0027\2\t\2\16\3\0\0\16\4\1\0>\2\3\1G\0\1\0\0À\14_hop_loop\bhop\15extensions\14telescope\frequire\18loop_callback\28send_selected_to_qflist\rcallback\1\0\0\21toggle_selectionò\4\1\0\b\0\29\0>4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\1\3\0013\2\18\0003\3\16\0003\4\14\0003\5\6\0007\6\4\0007\a\5\0\30\6\a\6:\6\a\0054\6\b\0%\a\2\0>\6\2\0027\6\t\0067\6\n\0067\6\n\6:\6\v\0051\6\f\0:\6\r\5:\5\15\4:\4\17\3:\3\19\0023\3\21\0003\4\20\0:\4\22\0033\4\23\0:\4\n\0033\4\24\0:\4\25\3:\3\t\2>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\27\0>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\28\0>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\22\0>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\n\0>\1\2\0010\0\0€G\0\1\0\rprojects\bdap\19load_extension\15fzf_writer\1\0\3\28minimum_grep_characters\3\2\20use_highlighter\2\29minimum_files_characters\3\2\1\0\2\16trace_entry\2\20reset_selection\2\bfzf\1\0\0\1\0\4\28override_generic_sorter\1\14case_mode\15smart_case\25override_file_sorter\2\nfuzzy\2\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\14<C-space>\0\n<C-h>\bhop\15extensions\6R\n<C-t>\1\0\0\16open_qflist\19send_to_qflist\nsetup\14telescope\22telescope.actions\frequire\0" },
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
    config = { "\27LJ\1\2«\a\0\0\5\0/\0=4\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\1\3\0003\2\23\0003\3\4\0003\4\5\0:\4\6\0033\4\a\0:\4\b\0033\4\t\0:\4\n\0033\4\v\0:\4\f\0033\4\r\0:\4\14\0033\4\15\0:\4\16\0033\4\17\0:\4\18\0033\4\19\0:\4\20\0033\4\21\0:\4\22\3:\3\24\0023\3\25\0:\3\26\0023\3\27\0003\4\28\0:\4\29\3:\3\30\0023\3\31\0:\3\20\0023\3 \0:\3!\0023\3\"\0:\3#\0023\3$\0:\3\b\0023\3%\0:\3&\0023\3'\0:\3(\0023\3)\0:\3\18\0023\3*\0:\3\f\0023\3+\0:\3\14\0023\3,\0:\3\22\0023\3-\0:\3\16\0023\3.\0>\1\3\1G\0\1\0\1\0\1\vprefix\r<leader>\1\0\1\tname\15Git Action\1\0\1\tname\27Paste System Clipboard\1\0\1\tname\14Workspace\1\0\1\tname\14Translate\1\0\1\tname\29Session & Spectre Action\6r\1\0\1\tname\27Ranger & Rename & Rest\6o\1\0\1\tname\29Operate Dashboard Action\1\0\1\tname\rMarkdown\6l\1\0\1\tname\20List Of Trouble\6x\1\0\1\tname\25Close Current Buffer\1\0\1\tname\15DAP Action\6c\6j\1\0\1\tname\21Java Code Action\1\0\1\tname\16Code Action\6b\1\0\1\tname\19Buffer Operate\6f\1\0\0\6p\1\0\1\tname\16Plug Action\6d\1\0\1\tname\25DAP Telescope Action\6s\1\0\1\tname\fSpectre\6g\1\0\1\tname\15Git Action\6w\1\0\1\tname\27Workspace & LSP Action\6t\1\0\1\tname\27TreeSitter & FileTypes\6h\1\0\1\tname\19History & Help\6m\1\0\1\tname\24Mark & Man & Format\6i\1\0\1\tname\23Buildin & Reloader\1\0\1\tname\31Find By Telescope & Format\rregister\nsetup\14which-key\frequire\0" },
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
try_loadstring('\27LJ\1\2Ê\6\0\0\5\0$\0+4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0003\3\4\0:\3\5\2:\2\a\0012\2\0\0:\2\b\0013\2\t\0002\3\0\0:\3\n\2:\2\v\0013\2\f\0:\2\r\0013\2\14\0:\2\15\0013\2\16\0:\2\17\0013\2\19\0003\3\18\0:\3\20\0023\3\21\0:\3\22\0023\3\23\0003\4\24\0:\4\25\3:\3\26\0023\3\27\0003\4\28\0:\4\25\3:\3\29\2:\2\30\0013\2!\0003\3\31\0003\4 \0:\4\25\3:\3"\2:\2#\1>\0\2\1G\0\1\0\16textobjects\vselect\1\0\0\1\0\4\aif\20@function.inner\aaf\20@function.outer\aac\17@class.outer\aic\17@class.inner\1\0\2\14lookahead\2\venable\2\rrefactor\15navigation\1\0\5\24goto_previous_usage\n<a-#>\20goto_definition\bgnd\21list_definitions\bgnD\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\1\0\1\venable\2\17smart_rename\fkeymaps\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\fmatchip\1\0\1\venable\2\14autopairs\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\19ignore_install\fautotag\1\0\1\21ensure_installed\ball\14filetypes\1\b\0\0\thtml\15javascript\20javascriptreact\20typescriptreact\vsvelte\bvue\bxml\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0', "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\1\2;\0\1\3\0\4\0\0064\1\0\0007\1\1\0017\1\2\0017\2\3\0>\1\2\1G\0\1\0\tbody\20vsnip#anonymous\afn\bvim¢\1\0\1\a\0\b\1\0234\1\0\0007\1\1\0017\1\2\1>\1\1\2\t\1\0\0T\1\14€4\1\0\0007\1\1\0017\1\3\0014\2\0\0007\2\4\0027\2\5\2%\3\6\0)\4\2\0)\5\2\0)\6\2\0>\2\5\2%\3\a\0>\1\3\1T\1\2€\16\1\0\0>\1\1\1G\0\1\0\6n\n<C-n>\27nvim_replace_termcodes\bapi\rfeedkeys\15pumvisible\afn\bvim\2¢\1\0\1\a\0\b\1\0234\1\0\0007\1\1\0017\1\2\1>\1\1\2\t\1\0\0T\1\14€4\1\0\0007\1\1\0017\1\3\0014\2\0\0007\2\4\0027\2\5\2%\3\6\0)\4\2\0)\5\2\0)\6\2\0>\2\5\2%\3\a\0>\1\3\1T\1\2€\16\1\0\0>\1\1\1G\0\1\0\6n\n<C-p>\27nvim_replace_termcodes\bapi\rfeedkeys\15pumvisible\afn\bvim\2½\2\0\2\5\0\n\0\0174\2\1\0%\3\2\0>\2\2\0027\2\3\0027\2\4\0027\3\0\0016\2\3\2%\3\5\0007\4\0\1$\2\4\2:\2\0\0013\2\a\0007\3\b\0007\3\t\0036\2\3\2:\2\6\1H\1\2\0\tname\vsource\1\0\n\rnvim_lsp\n[LSP]\nvsnip\f[VSnip]\16cmp_tabnine\14[Tabnine]\15treesitter\17[Treesitter]\tpath\v[Path]\tlook\v[Look]\rnvim_lua\n[Lua]\vbuffer\r[Buffer]\26vim-dadbod-completion\r[Dadbod]\18latex_symbols\f[Latex]\tmenu\6 \fdefault\fpresets\flspkind\frequire\tkind\6\1\0\b\0-\0L4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\2\3\0003\3\5\0003\4\4\0:\4\6\0033\4\b\0001\5\a\0:\5\t\4:\4\n\0033\4\r\0007\5\v\0007\5\f\5'\6\4\0>\5\2\2:\5\14\0047\5\v\0007\5\f\5'\6üÿ>\5\2\2:\5\15\0047\5\v\0007\5\16\5>\5\1\2:\5\17\0047\5\v\0007\5\18\5>\5\1\2:\5\19\0047\5\v\0007\5\20\0053\6\23\0007\a\21\0007\a\22\a:\a\24\6>\5\2\2:\5\25\0041\5\26\0:\5\27\0041\5\28\0:\5\29\4:\4\v\0032\4\t\0003\5\30\0;\5\1\0043\5\31\0;\5\2\0043\5 \0;\5\3\0043\5!\0;\5\4\0043\5\"\0;\5\5\0043\5#\0;\5\6\0043\5$\0;\5\a\0043\5%\0;\5\b\4:\4&\0033\4'\0001\5(\0:\5)\4:\4*\3>\2\2\0014\2\0\0%\3+\0>\2\2\0027\2\3\0023\3,\0>\2\2\1G\0\1\0\1\0\3\17map_complete\2\16auto_select\2\vmap_cr\2\"nvim-autopairs.completion.cmp\15formatting\vformat\0\1\0\1\15deprecated\2\fsources\1\0\1\tname\tlook\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\26vim-dadbod-completion\1\0\1\tname\15treesitter\1\0\1\tname\16cmp_tabnine\1\0\1\tname\rnvim_lsp\f<S-Tab>\0\n<Tab>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-u>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsnippet\vexpand\1\0\0\0\15completion\1\0\0\1\0\1\16completeopt\26menu,menuone,noinsert\nsetup\flspkind\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\1\2«\a\0\0\5\0/\0=4\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\1\3\0003\2\23\0003\3\4\0003\4\5\0:\4\6\0033\4\a\0:\4\b\0033\4\t\0:\4\n\0033\4\v\0:\4\f\0033\4\r\0:\4\14\0033\4\15\0:\4\16\0033\4\17\0:\4\18\0033\4\19\0:\4\20\0033\4\21\0:\4\22\3:\3\24\0023\3\25\0:\3\26\0023\3\27\0003\4\28\0:\4\29\3:\3\30\0023\3\31\0:\3\20\0023\3 \0:\3!\0023\3\"\0:\3#\0023\3$\0:\3\b\0023\3%\0:\3&\0023\3'\0:\3(\0023\3)\0:\3\18\0023\3*\0:\3\f\0023\3+\0:\3\14\0023\3,\0:\3\22\0023\3-\0:\3\16\0023\3.\0>\1\3\1G\0\1\0\1\0\1\vprefix\r<leader>\1\0\1\tname\15Git Action\1\0\1\tname\27Paste System Clipboard\1\0\1\tname\14Workspace\1\0\1\tname\14Translate\1\0\1\tname\29Session & Spectre Action\6r\1\0\1\tname\27Ranger & Rename & Rest\6o\1\0\1\tname\29Operate Dashboard Action\1\0\1\tname\rMarkdown\6l\1\0\1\tname\20List Of Trouble\6x\1\0\1\tname\25Close Current Buffer\1\0\1\tname\15DAP Action\6c\6j\1\0\1\tname\21Java Code Action\1\0\1\tname\16Code Action\6b\1\0\1\tname\19Buffer Operate\6f\1\0\0\6p\1\0\1\tname\16Plug Action\6d\1\0\1\tname\25DAP Telescope Action\6s\1\0\1\tname\fSpectre\6g\1\0\1\tname\15Git Action\6w\1\0\1\tname\27Workspace & LSP Action\6t\1\0\1\tname\27TreeSitter & FileTypes\6h\1\0\1\tname\19History & Help\6m\1\0\1\tname\24Mark & Man & Format\6i\1\0\1\tname\23Buildin & Reloader\1\0\1\tname\31Find By Telescope & Format\rregister\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: rest.nvim
time([[Config for rest.nvim]], true)
try_loadstring("\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14rest-nvim\frequire\0", "config", "rest.nvim")
time([[Config for rest.nvim]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
try_loadstring("\27LJ\1\2u\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\1G\0\1\0\15file_panel\1\0\1\nwidth\3#\1\0\2\18diff_binaries\1\14use_icons\2\nsetup\rdiffview\frequire\0", "config", "diffview.nvim")
time([[Config for diffview.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\1\0025\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\1\2\\\0\0\3\0\5\1\0154\0\0\0007\0\1\0007\0\2\0004\1\0\0007\1\1\0017\1\3\1%\2\4\0>\1\2\0=\0\0\2\t\0\0\0T\0\2€)\0\1\0T\1\1€)\0\2\0H\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\2\0\3\0\f4\0\0\0007\0\1\0007\0\2\0'\1\0\0>\0\2\2'\1P\0\0\1\0\0T\0\2€)\0\1\0T\1\1€)\0\2\0H\0\2\0\rwinwidth\afn\bvim–\1\0\0\5\0\a\0\0274\0\0\0007\0\1\0007\0\2\0%\1\3\0>\0\2\0024\1\0\0007\1\1\0017\1\4\1%\2\5\0\16\3\0\0%\4\6\0$\3\4\3>\1\3\2\r\2\1\0T\2\v€\19\2\1\0'\3\0\0\1\3\2\0T\2\4€\19\2\1\0\19\3\0\0\0\2\3\0T\2\2€)\2\1\0T\3\1€)\2\2\0H\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvimI\0\1\4\1\4\0\b4\1\0\0007\1\1\1+\2\0\0007\2\2\0027\2\3\2\16\3\0\0>\1\3\1G\0\1\0\3À\14lualine_c\rsections\vinsert\ntableI\0\1\4\1\4\0\b4\1\0\0007\1\1\1+\2\0\0007\2\2\0027\2\3\2\16\3\0\0>\1\3\1G\0\1\0\3À\14lualine_x\rsections\vinsert\ntable\19\0\0\1\0\1\0\2%\0\0\0H\0\2\0\bâ–Šã\3\0\0\6\1&\0M3\0\1\0+\1\0\0007\1\0\1:\1\2\0+\1\0\0007\1\3\1:\1\4\0+\1\0\0007\1\5\1:\1\6\0+\1\0\0007\1\5\1:\1\a\0+\1\0\0007\1\5\1:\1\b\0+\1\0\0007\1\t\1:\1\n\0+\1\0\0007\1\0\1:\1\v\0+\1\0\0007\1\f\1:\1\r\0+\1\0\0007\1\f\1:\1\14\0+\1\0\0007\1\f\1:\1\15\0+\1\0\0007\1\16\1:\1\17\0+\1\0\0007\1\18\1:\1\19\0+\1\0\0007\1\18\1:\1\20\0+\1\0\0007\1\0\1:\1\21\0+\1\0\0007\1\0\1:\1\22\0+\1\0\0007\1\23\1:\1\24\0+\1\0\0007\1\23\1:\1\25\0+\1\0\0007\1\23\1:\1\26\0+\1\0\0007\1\0\1:\1\27\0+\1\0\0007\1\0\1:\1\28\0004\1\29\0007\1\30\0017\1\31\1%\2 \0004\3\29\0007\3!\0037\3\"\3>\3\1\0026\3\3\0%\4#\0+\5\0\0007\5$\5$\2\5\2>\1\2\1%\1%\0H\1\2\0\1À\bïŒŒ\abg\f guibg=\tmode\afn\27hi! LualineMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\vviolet\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\bred \1\0\1\b\0\b\2\0254\1\0\0007\1\1\0017\1\2\1\16\2\0\0>\1\2\2'\2\0\0\3\1\2\0T\2\2€%\2\3\0H\2\2\0003\2\4\0'\3\1\0'\4\0\4\1\4\1\0T\4\4€Q\4\3€\23\1\0\1\20\3\1\3T\4ù4\4\5\0007\4\6\4%\5\a\0\16\6\1\0006\a\3\2@\4\4\0\v%.1f%s\vformat\vstring\1\5\0\0\6b\6k\6m\6g\5\rgetfsize\afn\bvim€\16\2s\1\0\4\0\b\1\0191\0\0\0004\1\1\0007\1\2\0017\1\3\1%\2\4\0>\1\2\0024\2\5\0007\2\6\2\16\3\1\0>\2\2\2\t\2\0\0T\2\3€%\2\a\0000\0\0€H\2\2\0\16\2\0\0\16\3\1\0000\0\0€@\2\2\0\5\blen\vstring\b%:p\vexpand\afn\bvim\0\0\18\0\0\1\0\1\0\2%\0\0\0H\0\2\0\a%=™\2\0\0\f\0\14\1&%\0\0\0004\1\1\0007\1\2\0017\1\3\1'\2\0\0%\3\4\0>\1\3\0024\2\1\0007\2\5\0027\2\6\2>\2\1\0024\3\a\0\16\4\2\0>\3\2\2\v\3\0\0T\3\1€H\0\2\0004\3\b\0\16\4\2\0>\3\2\4T\6\14€7\b\t\a7\b\n\b\15\0\b\0T\t\n€4\t\1\0007\t\v\t7\t\f\t\16\n\b\0\16\v\1\0>\t\3\2\b\t\0\0T\t\2€7\t\r\aH\t\2\0A\6\3\3N\6ðH\0\2\0\tname\nindex\afn\14filetypes\vconfig\vipairs\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\18No Active Lspþÿÿÿ\31\19\0\0\1\0\1\0\2%\0\0\0H\0\2\0\bâ–ŠÈ\r\1\0\n\0V\0µ\0014\0\0\0%\1\1\0>\0\2\0023\1\2\0003\2\4\0001\3\3\0:\3\5\0021\3\6\0:\3\a\0021\3\b\0:\3\t\0023\3\22\0003\4\n\0003\5\16\0003\6\14\0003\a\f\0007\b\v\1:\b\v\a7\b\r\1:\b\r\a:\a\15\6:\6\17\0053\6\19\0003\a\18\0007\b\v\1:\b\v\a7\b\r\1:\b\r\a:\a\15\6:\6\20\5:\5\21\4:\4\23\0033\4\24\0002\5\0\0:\5\25\0042\5\0\0:\5\26\0042\5\0\0:\5\27\0042\5\0\0:\5\28\0042\5\0\0:\5\29\0042\5\0\0:\5\30\4:\4\31\0033\4 \0002\5\0\0:\5\25\0042\5\0\0:\5!\0042\5\0\0:\5\27\0042\5\0\0:\5\28\0042\5\0\0:\5\29\0042\5\0\0:\5\30\4:\4\"\0031\4#\0001\5$\0\16\6\4\0003\a(\0001\b%\0;\b\1\a3\b'\0007\t&\1:\t\v\b:\b)\a>\6\2\1\16\6\4\0003\a+\0001\b*\0;\b\1\a>\6\2\1\16\6\4\0003\a-\0001\b,\0;\b\1\a7\b\5\2:\b.\a>\6\2\1\16\6\4\0003\a/\0007\b\5\2:\b.\a3\b1\0007\t0\1:\t\v\b:\b)\a>\6\2\1\16\6\4\0003\a2\0007\b\t\2:\b.\a3\b4\0007\t3\1:\t\v\b:\b)\a>\6\2\1\16\6\4\0003\a5\0003\b6\0:\b7\a7\b8\1:\b9\a7\b:\1:\b;\a7\b<\1:\b=\a7\b\a\2:\b.\a>\6\2\1\16\6\4\0002\a\3\0001\b>\0;\b\1\a>\6\2\1\16\6\4\0003\a@\0001\b?\0;\b\1\a3\bA\0007\t\v\1:\t\v\b:\b)\a>\6\2\1\16\6\5\0003\aB\0003\bC\0:\bD\a3\bE\0:\b7\a7\b<\1:\bF\a7\bG\1:\bH\a7\bI\1:\bJ\a>\6\2\1\16\6\5\0003\aK\0007\b\a\2:\b.\a3\bL\0007\t8\1:\t\v\b:\b)\a>\6\2\1\16\6\5\0003\aM\0003\bN\0007\t8\1:\t\v\b:\b)\a>\6\2\1\16\6\5\0003\aO\0>\6\2\1\16\6\5\0003\aP\0003\bQ\0007\t\v\1:\t\v\b:\b)\a>\6\2\1\16\6\5\0003\aT\0001\bR\0;\b\1\a3\bS\0007\t&\1:\t\v\b:\b)\a>\6\2\0017\6U\0\16\a\3\0>\6\2\0010\0\0€G\0\1\0\nsetup\1\0\1\18right_padding\3\0\1\0\0\0\1\0\1\bgui\tbold\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\1\bgui\tbold\1\2\2\0\15fileformat\nupper\2\18icons_enabled\1\1\0\1\bgui\tbold\1\2\1\0\15o:encoding\nupper\2\15color_info\tcyan\15color_warn\vyellow\16color_error\1\0\3\tinfo\tïª \twarn\tï± \nerror\tï— \fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\1\0\1\bgui\tbold\1\0\1\ticon\rï‚… LSP:\0\0\18color_removed\bred\19color_modified\vorange\16color_added\ngreen\fsymbols\1\0\3\nadded\tïƒ¾ \rmodified\tï§‰ \fremoved\tï…† \1\2\0\0\tdiff\1\0\1\bgui\tbold\vviolet\1\2\1\0\vbranch\ticon\bï‘¿\1\0\1\bgui\tbold\fmagenta\1\2\0\0\rfilename\14condition\1\0\0\0\1\0\2\ncolor\16LualineMode\17left_padding\3\0\0\ncolor\1\0\1\17left_padding\3\0\1\0\0\tblue\0\0\0\22inactive_sections\14lualine_v\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\1\0\0\afg\1\0\2\23section_separators\5\25component_separators\5\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\1\0\v\vviolet\f#a9a1e1\ngreen\f#98be65\tcyan\f#008080\vyellow\f#ECBE7B\rdarkblue\f#081633\abg\f#202328\fmagenta\f#c678dd\tblue\f#51afef\vorange\f#FF8800\afg\f#bbc2cf\bred\f#ec5f67\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\1\2M\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: hop
time([[Config for hop]], true)
try_loadstring("\27LJ\1\0021\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\bhop\frequire\0", "config", "hop")
time([[Config for hop]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\1\2}\0\4\14\0\a\0\21%\4\0\0004\5\1\0\16\6\2\0>\5\2\4D\b\r€\a\b\2\0T\n\2€%\n\3\0T\v\5€\a\b\4\0T\n\2€%\n\5\0T\v\1€%\n\6\0\16\v\4\0\16\f\n\0\16\r\t\0$\4\r\vB\b\3\3N\bñH\4\2\0\bïª\bï±\fwarning\bï—\nerror\npairs\6 ¿\2\1\0\4\0\14\0\0174\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0001\3\4\0:\3\5\2:\2\a\0013\2\t\0003\3\b\0:\3\n\0023\3\v\0:\3\f\2:\2\r\1>\0\2\1G\0\1\0\15highlights\23indicator_selected\1\0\2\nguibg\f#282c34\nguifg\f#51afef\tfill\1\0\0\1\0\2\nguibg\f#202328\nguifg\f#282c34\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\20show_close_icon\1\22show_buffer_icons\2\16diagnostics\rnvim_lsp\28show_buffer_close_icons\1\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\1\2»\1\0\1\5\1\n\0\0173\1\1\0+\2\0\0007\2\0\2:\2\2\1+\2\0\0007\2\3\2:\2\4\0014\2\5\0%\3\6\0>\2\2\0027\2\a\0027\2\b\0027\2\t\2\16\3\0\0\16\4\1\0>\2\3\1G\0\1\0\0À\14_hop_loop\bhop\15extensions\14telescope\frequire\18loop_callback\28send_selected_to_qflist\rcallback\1\0\0\21toggle_selectionò\4\1\0\b\0\29\0>4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\1\3\0013\2\18\0003\3\16\0003\4\14\0003\5\6\0007\6\4\0007\a\5\0\30\6\a\6:\6\a\0054\6\b\0%\a\2\0>\6\2\0027\6\t\0067\6\n\0067\6\n\6:\6\v\0051\6\f\0:\6\r\5:\5\15\4:\4\17\3:\3\19\0023\3\21\0003\4\20\0:\4\22\0033\4\23\0:\4\n\0033\4\24\0:\4\25\3:\3\t\2>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\27\0>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\28\0>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\22\0>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\n\0>\1\2\0010\0\0€G\0\1\0\rprojects\bdap\19load_extension\15fzf_writer\1\0\3\28minimum_grep_characters\3\2\20use_highlighter\2\29minimum_files_characters\3\2\1\0\2\16trace_entry\2\20reset_selection\2\bfzf\1\0\0\1\0\4\28override_generic_sorter\1\14case_mode\15smart_case\25override_file_sorter\2\nfuzzy\2\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\14<C-space>\0\n<C-h>\bhop\15extensions\6R\n<C-t>\1\0\0\16open_qflist\19send_to_qflist\nsetup\14telescope\22telescope.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-toggleterm.lua
time([[Config for nvim-toggleterm.lua]], true)
try_loadstring("\27LJ\1\2Õ\1\0\0\3\0\a\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0004\2\4\0007\2\5\0027\2\6\2:\2\6\1>\0\2\1G\0\1\0\nshell\6o\bvim\1\0\b\20shade_terminals\2\20insert_mappings\1\tsize\3\15\17persist_size\2\20start_in_insert\2\14direction\15horizontal\18close_on_exit\2\17hide_numbers\1\nsetup\15toggleterm\frequire\0", "config", "nvim-toggleterm.lua")
time([[Config for nvim-toggleterm.lua]], false)
-- Config for: spellsitter.nvim
time([[Config for spellsitter.nvim]], true)
try_loadstring("\27LJ\1\2]\0\0\3\0\5\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0002\2\0\0:\2\4\1>\0\2\1G\0\1\0\rcaptures\1\0\1\ahl\rSpellBad\nsetup\16spellsitter\frequire\0", "config", "spellsitter.nvim")
time([[Config for spellsitter.nvim]], false)
-- Config for: lspkind-nvim
time([[Config for lspkind-nvim]], true)
try_loadstring("\27LJ\1\2Ù\2\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\1G\0\1\0\15symbol_map\1\0\21\tText\bî˜’\rFunction\bï‚š\nClass\bîƒ\nColor\bîˆ«\14Interface\bï°®\vModule\bï£–\rConstant\bîˆ¬\vMethod\aÆ’\tUnit\bï‘µ\15EnumMember\bï…\vFolder\bï„•\rProperty\bî˜¤\vStruct\bïƒŠ\rVariable\bîž›\fSnippet\bï¬Œ\aDB\bîœ†\tFile\bï…›\nValue\bï¢Ÿ\16Constructor\bîˆ\tEnum\bäº†\fKeyword\bï …\1\0\2\vpreset\rcodicons\14with_text\2\tinit\flspkind\frequire\0", "config", "lspkind-nvim")
time([[Config for lspkind-nvim]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\1\0023\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\ndapui\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\1\2â\a\0\0\4\0\f\0\0154\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\0013\2\6\0003\3\a\0:\3\b\0023\3\t\0:\3\n\2:\2\v\1>\0\2\1G\0\1\0\fkeymaps\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\1\0\v\17n <leader>gb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17v <leader>gsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>gp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17v <leader>grT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\fnoremap\2\17n <leader>gs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\28current_line_blame_opts\1\0\1\ndelay\3ô\3\1\0\1\23current_line_blame\2\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\1\2;\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: nvim-jdtls
time([[Config for nvim-jdtls]], true)
try_loadstring("\27LJ\1\2N\0\1\4\1\4\0\v3\1\0\0:\0\1\1+\2\0\0\16\3\0\0>\2\2\2:\2\2\1+\2\0\0\16\3\0\0>\2\2\2:\2\3\1H\1\2\0\2À\fordinal\fdisplay\nvalue\1\0\0\\\0\0\3\3\3\0\f+\0\0\0007\0\0\0+\1\1\0>\0\2\2+\1\0\0007\1\1\1+\2\1\0>\1\2\1+\1\2\0007\2\2\0>\1\2\1G\0\1\0\0\0\0À\1\0\nvalue\nclose\23get_selected_entryG\1\1\4\2\3\0\t+\1\0\0007\1\0\1\16\2\1\0007\1\1\0011\3\2\0>\1\3\1)\1\2\0000\0\0€H\1\2\0\3\0\3À\0\freplace\19select_defaultê\1\1\4\v\4\14\0\0262\4\0\0+\5\0\0007\5\0\5\16\6\4\0003\a\1\0:\1\2\a+\b\1\0007\b\3\b3\t\4\0:\0\5\t1\n\6\0:\n\a\t>\b\2\2:\b\b\a+\b\2\0007\b\t\b>\b\1\2:\b\n\a1\b\v\0:\b\f\a>\5\3\2\16\6\5\0007\5\r\5>\5\2\0010\0\0€G\0\1\0\3À\0À\1À\2À\tfind\20attach_mappings\0\vsorter\29get_generic_fuzzy_sorter\vfinder\16entry_maker\0\fresults\1\0\0\14new_table\17prompt_title\1\0\0\bnew¼\1\1\0\6\0\b\0\0194\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0024\2\0\0%\3\3\0>\2\2\0024\3\0\0%\4\4\0>\3\2\0024\4\0\0%\5\5\0>\4\2\0021\5\a\0:\5\6\0040\0\0€G\0\1\0\0\19pick_one_async\rjdtls.ui\22telescope.pickers\22telescope.actions\22telescope.sorters\22telescope.finders\frequire\0", "config", "nvim-jdtls")
time([[Config for nvim-jdtls]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\1\2Ë\1\0\0\3\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0013\2\6\0:\2\a\1>\0\2\1G\0\1\0\rpatterns\1\b\0\0\t.git\v_darcs\b.hg\t.bzr\t.svn\rMakefile\17package.json\22detection_methods\1\0\2\16show_hidden\2\17silent_chdir\1\1\3\0\0\blsp\fpattern\nsetup\17project_nvim\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\1\2ˆ\1\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\17handler_opts\1\0\2\16hint_prefix\tîž› \15toggle_key\n<M-s>\1\0\1\vborder\tnone\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: nvim-lspinstall
time([[Config for nvim-lspinstall]], true)
try_loadstring("\27LJ\1\2@\0\2\5\0\3\0\b4\2\0\0%\3\1\0>\2\2\0027\2\2\2\16\3\0\0\16\4\1\0>\2\3\1G\0\1\0\nsetup\15lsp.common\frequireê\2\0\0\4\1\18\0\0294\0\0\0007\0\1\0007\0\2\0007\0\3\0>\0\1\0024\1\4\0%\2\5\0>\1\2\0027\1\6\1\16\2\0\0>\1\2\2\16\0\1\0007\1\a\0007\1\b\0017\1\t\1)\2\2\0:\2\n\0017\1\a\0007\1\b\0017\1\t\0013\2\r\0003\3\f\0:\3\14\2:\2\v\0013\1\15\0:\0\16\1+\2\0\0:\2\17\1H\1\2\0\1À\14on_attach\17capabilities\1\0\0\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\24update_capabilities\17cmp_nvim_lsp\frequire\29make_client_capabilities\rprotocol\blsp\bvimÊ\4\0\0\n\1\21\0;4\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\0\3\0>\0\1\0024\1\4\0007\1\5\1\16\2\0\0%\3\6\0>\1\3\0014\1\4\0007\1\5\1\16\2\0\0%\3\a\0>\1\3\0014\1\b\0\16\2\0\0>\1\2\4D\4 €+\6\0\0>\6\1\2\a\5\t\0T\a\4€4\a\0\0%\b\v\0>\a\2\2:\a\n\6\a\5\a\0T\a\2€3\a\r\0:\a\f\6\a\5\6\0T\a\2€3\a\14\0:\a\f\6\6\5\15\0T\a\b€4\a\0\0%\b\16\0>\a\2\0026\a\5\a7\a\2\a\16\b\6\0>\a\2\1T\a\6€4\a\17\0007\a\18\a7\a\19\a%\b\20\0)\t\1\0>\a\3\1B\4\3\3N\4ÞG\0\1\0\2À’\1        augroup jdtls_lsp\n          autocmd!\n          autocmd FileType java lua require('lsp.java.jdtls').setup()\n        augroup end\n      \14nvim_exec\bapi\bvim\14lspconfig\tjava\1\3\0\0\6c\bcpp\1\4\0\0\nswift\16objective-c\18objective-cpp\14filetypes\21lsp.lua.settings\rsettings\blua\npairs\14sourcekit\vclangd\vinsert\ntable\22installed_servers\nsetup\15lspinstall\frequireG\0\0\2\1\4\0\b+\0\0\0007\0\0\0>\0\1\0014\0\1\0007\0\2\0%\1\3\0>\0\2\1G\0\1\0\0À\fbufdo e\bcmd\bvim\18setup_serversv\1\0\5\0\b\0\0142\0\0\0001\1\0\0001\2\1\0001\3\3\0:\3\2\0007\3\2\0>\3\1\0014\3\4\0%\4\5\0>\3\2\0021\4\a\0:\4\6\0030\0\0€G\0\1\0\0\22post_install_hook\15lspinstall\frequire\0\18setup_servers\0\0\0", "config", "nvim-lspinstall")
time([[Config for nvim-lspinstall]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
