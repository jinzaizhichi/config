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
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  ["DAPInstall.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/DAPInstall.nvim",
    url = "https://github.com/Pocco81/DAPInstall.nvim"
  },
  ["cheatsheet.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/cheatsheet.nvim",
    url = "https://github.com/sudormrfbin/cheatsheet.nvim"
  },
  ["clever-f.vim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/clever-f.vim",
    url = "https://github.com/rhysd/clever-f.vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-look"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/cmp-look",
    url = "https://github.com/octaltree/cmp-look"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["diffview.nvim"] = {
    config = { "\27LJ\1\2u\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\1G\0\1\0\15file_panel\1\0\1\nwidth\3#\1\0\2\18diff_binaries\1\14use_icons\2\nsetup\rdiffview\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  firenvim = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/firenvim",
    url = "https://github.com/glacambre/firenvim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\1\2Š\1\0\0\4\0\6\0\n3\0\0\0003\1\1\0004\2\2\0007\2\3\0027\2\4\2'\3\0\0>\2\2\2;\2\2\1:\1\5\0H\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\4\0\0\21--stdin-filepath\0\19--single-quote\1\0\2\nstdin\2\bexe\rprettierD\0\0\2\0\3\0\0043\0\0\0003\1\1\0:\1\2\0H\0\2\0\targs\1\2\0\0\18--emit=stdout\1\0\2\nstdin\2\bexe\frustfmtJ\0\0\2\0\3\0\0043\0\0\0003\1\1\0:\1\2\0H\0\2\0\targs\1\3\0\0\19--indent-width\3\2\1\0\2\nstdin\2\bexe\15lua-format¢\1\1\0\5\0\f\0\0214\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\5\0002\3\3\0001\4\4\0;\4\1\3:\3\6\0022\3\3\0001\4\a\0;\4\1\3:\3\b\0022\3\3\0001\4\t\0;\4\1\3:\3\n\2:\2\v\1>\0\2\1G\0\1\0\rfiletype\blua\0\trust\0\15javascript\1\0\0\0\1\0\1\flogging\1\nsetup\14formatter\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\2â\a\0\0\4\0\f\0\0154\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\0013\2\6\0003\3\a\0:\3\b\0023\3\t\0:\3\n\2:\2\v\1>\0\2\1G\0\1\0\fkeymaps\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\1\0\v\17n <leader>gb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17v <leader>gsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>gp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17v <leader>grT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\fnoremap\2\17n <leader>gs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\28current_line_blame_opts\1\0\1\ndelay\3ô\3\1\0\1\23current_line_blame\2\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["glow.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/glow.nvim",
    url = "https://github.com/npxbr/glow.nvim"
  },
  hop = {
    config = { "\27LJ\1\0021\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/hop",
    url = "https://github.com/phaazon/hop.nvim"
  },
  kommentary = {
    config = { "\27LJ\1\2^\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireè\1\1\0\4\0\b\0\0154\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\0\3\0%\1\4\0003\2\5\0001\3\6\0:\3\a\2>\0\3\1G\0\1\0\18hook_function\0\1\0\2\31multi_line_comment_strings\tauto\31single_line_comment_string\tauto\20typescriptreact\23configure_language\26use_extended_mappings\22kommentary.config\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/kommentary",
    url = "https://github.com/b3nj5m1n/kommentary"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\1\2¶\1\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\17handler_opts\1\0\5\15toggle_key\n<M-s>\20floating_window\1\16hint_prefix\tîž› \16hint_enable\2\19always_trigger\1\1\0\1\vborder\tnone\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    config = { "\27LJ\1\2U\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\2\vpreset\fdefault\14with_text\2\tinit\flspkind\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\2\\\0\0\3\0\5\1\0154\0\0\0007\0\1\0007\0\2\0004\1\0\0007\1\1\0017\1\3\1%\2\4\0>\1\2\0=\0\0\2\t\0\0\0T\0\2€)\0\1\0T\1\1€)\0\2\0H\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\2\0\3\0\f4\0\0\0007\0\1\0007\0\2\0'\1\0\0>\0\2\2'\1P\0\0\1\0\0T\0\2€)\0\1\0T\1\1€)\0\2\0H\0\2\0\rwinwidth\afn\bvim–\1\0\0\5\0\a\0\0274\0\0\0007\0\1\0007\0\2\0%\1\3\0>\0\2\0024\1\0\0007\1\1\0017\1\4\1%\2\5\0\16\3\0\0%\4\6\0$\3\4\3>\1\3\2\r\2\1\0T\2\v€\19\2\1\0'\3\0\0\1\3\2\0T\2\4€\19\2\1\0\19\3\0\0\0\2\3\0T\2\2€)\2\1\0T\3\1€)\2\2\0H\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvim:\0\0\1\0\4\0\0064\0\0\0007\0\1\0007\0\2\0>\0\1\0027\0\3\0H\0\2\0\tmode\18nvim_get_mode\bapi\bvim0\0\0\3\2\1\0\t+\0\0\0>\0\1\2+\1\1\0006\1\0\1\14\0\1\0T\2\2€%\2\0\0H\2\2\0H\1\2\0\4À\3À\5I\0\1\4\1\4\0\b4\1\0\0007\1\1\1+\2\0\0007\2\2\0027\2\3\2\16\3\0\0>\1\3\1G\0\1\0\6À\14lualine_c\rsections\vinsert\ntableI\0\1\4\1\4\0\b4\1\0\0007\1\1\1+\2\0\0007\2\2\0027\2\3\2\16\3\0\0>\1\3\1G\0\1\0\6À\14lualine_x\rsections\vinsert\ntableR\0\1\4\1\4\0\b4\1\0\0007\1\1\1+\2\0\0007\2\2\0027\2\3\2\16\3\0\0>\1\3\1G\0\1\0\6À\14lualine_c\22inactive_sections\vinsert\ntableR\0\1\4\1\4\0\b4\1\0\0007\1\1\1+\2\0\0007\2\2\0027\2\3\2\16\3\0\0>\1\3\1G\0\1\0\6À\14lualine_x\22inactive_sections\vinsert\ntable\19\0\0\1\0\1\0\2%\0\0\0H\0\2\0\bâ–ŠÌ\5\0\0\6\0023\0z3\0\1\0+\1\0\0007\1\0\1:\1\2\0+\1\0\0007\1\3\1:\1\4\0+\1\0\0007\1\3\1:\1\5\0+\1\0\0007\1\3\1:\1\6\0+\1\0\0007\1\3\1:\1\a\0+\1\0\0007\1\0\1:\1\b\0+\1\0\0007\1\0\1:\1\t\0+\1\0\0007\1\0\1:\1\n\0+\1\0\0007\1\0\1:\1\v\0+\1\0\0007\1\f\1:\1\r\0+\1\0\0007\1\f\1:\1\14\0+\1\0\0007\1\f\1:\1\15\0+\1\0\0007\1\f\1:\1\16\0+\1\0\0007\1\f\1:\1\17\0+\1\0\0007\1\f\1:\1\18\0+\1\0\0007\1\19\1:\1\20\0+\1\0\0007\1\19\1:\1\21\0+\1\0\0007\1\19\1:\1\22\0+\1\0\0007\1\23\1:\1\24\0+\1\0\0007\1\23\1:\1\25\0+\1\0\0007\1\23\1:\1\26\0+\1\0\0007\1\0\1:\1\27\0+\1\0\0007\1\0\1:\1\28\0+\1\0\0007\1\0\1:\1\29\0+\1\0\0007\1\0\1:\1\30\0+\1\0\0007\1\0\1:\1\31\0+\1\0\0007\1\0\1:\1 \0+\1\0\0007\1!\1:\1\"\0+\1\0\0007\1!\1:\1#\0+\1\0\0007\1\0\1:\1$\0+\1\0\0007\1%\1:\1&\0+\1\0\0007\1%\1:\1'\0+\1\0\0007\1%\1:\1(\0+\1\0\0007\1\3\1:\1)\0+\1\0\0007\1\3\1:\1*\0004\1+\0007\1,\0017\1-\1%\2.\0004\3+\0007\3/\0037\0030\3>\3\1\0026\3\3\0%\0041\0+\5\0\0007\0052\5$\2\5\2>\1\2\1+\1\1\0@\1\1\0\1À\5À\abg\f guibg=\tmode\afn$hi! LualineMode gui=bold guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\6c\fmagenta\bRvx\bRvc\aRv\aRx\aRc\6R\aix\aic\6i\ngreen\6\19\6S\6s\vorange\a\22s\6\22\aVs\6V\avs\6v\tblue\ant\bniV\bniR\bniI\bno\22\bnoV\bnov\ano\bred\6n\1\0\0\vviolet\18\0\0\1\0\1\0\2%\0\0\0H\0\2\0\a%=³\3\0\0\r\0\21\2B%\0\0\0004\1\1\0007\1\2\0017\1\3\1'\2\0\0%\3\4\0>\1\3\0024\2\1\0007\2\5\0027\2\6\2>\2\1\0024\3\a\0\16\4\2\0>\3\2\2\v\3\0\0T\3\1€H\0\2\0%\3\b\0004\4\t\0\16\5\2\0>\4\2\4T\a\24€7\t\n\b7\t\v\t\15\0\t\0T\n\20€4\n\1\0007\n\f\n7\n\r\n\16\v\t\0\16\f\1\0>\n\3\2\b\n\0\0T\n\f€7\n\14\b4\v\1\0007\v\f\v7\v\15\v>\v\1\0026\n\v\n\n\n\0\0T\n\4€\16\n\3\0007\v\16\b%\f\17\0$\3\f\nA\a\3\3N\aæ4\4\18\0007\4\19\4\16\5\3\0>\4\2\2'\5\0\0\1\5\4\0T\4\n€4\4\18\0007\4\20\4\16\5\3\0'\6\1\0004\a\18\0007\a\19\a\16\b\3\0>\a\2\2\21\a\1\a@\4\4\0H\0\2\0\bsub\blen\vstring\6 \tname\nbufnr\21attached_buffers\nindex\afn\14filetypes\vconfig\vipairs\5\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\18No Active Lspþÿÿÿ\31\2\19\0\0\1\0\1\0\2%\0\0\0H\0\2\0\bâ–Š…\19\1\0\16\0p\0å\0014\0\0\0%\1\1\0>\0\2\0023\1\2\0003\2\4\0001\3\3\0:\3\5\0021\3\6\0:\3\a\0021\3\b\0:\3\t\0023\3\n\0001\4\v\0001\5\f\0003\6\25\0003\a\r\0003\b\19\0003\t\17\0003\n\15\0007\v\14\1:\v\14\n7\v\16\1:\v\16\n:\n\18\t:\t\20\b3\t\22\0003\n\21\0007\v\14\1:\v\14\n7\v\16\1:\v\16\n:\n\18\t:\t\23\b:\b\24\a:\a\26\0063\a\27\0002\b\0\0:\b\28\a2\b\0\0:\b\29\a2\b\0\0:\b\30\a2\b\0\0:\b\31\a2\b\0\0:\b \a2\b\0\0:\b!\a:\a\"\0063\a#\0002\b\0\0:\b\28\a2\b\0\0:\b$\a2\b\0\0:\b\30\a2\b\0\0:\b\31\a2\b\0\0:\b \a2\b\0\0:\b!\a:\a%\0061\a&\0001\b'\0001\t(\0001\n)\0\16\v\a\0003\f-\0001\r*\0;\r\1\f3\r,\0007\14+\1:\14\14\r:\r.\f3\r/\0:\r0\f>\v\2\1\16\v\a\0003\f2\0001\r1\0;\r\1\f3\r3\0:\r0\f>\v\2\1\16\v\a\0003\f4\0007\r\5\2:\r5\f>\v\2\1\16\v\a\0003\f6\0007\r\5\2:\r5\f3\r8\0007\0147\1:\14\14\r:\r.\f>\v\2\1\16\v\a\0003\f9\0003\r;\0007\14:\1:\14\14\r:\r.\f>\v\2\1\16\v\a\0003\f<\0003\r=\0:\r>\f3\rA\0003\14@\0007\15?\1:\15\14\14:\14B\r3\14D\0007\15C\1:\15\14\14:\14E\r3\14G\0007\15F\1:\15\14\14:\14H\r:\rI\f7\r\a\2:\r5\f>\v\2\1\16\v\a\0002\f\3\0001\rJ\0;\r\1\f>\v\2\1\16\v\a\0003\fL\0001\rK\0;\r\1\f3\rN\0007\14M\1:\14\14\r:\r.\f>\v\2\1\16\v\b\0003\fO\0003\rP\0:\rQ\f3\rR\0:\r>\f3\rT\0003\14S\0007\15F\1:\15\14\14:\14U\r3\14W\0007\15V\1:\15\14\14:\14X\r3\14Y\0007\15M\1:\15\14\14:\14Z\r:\r[\f>\v\2\1\16\v\b\0003\f\\\0004\r]\0007\r^\r:\r_\f7\r\a\2:\r5\f3\r`\0007\14?\1:\14\14\r:\r.\f>\v\2\1\16\v\b\0003\fa\0004\r]\0007\r^\r:\r_\f3\rb\0007\14?\1:\14\14\r:\r.\f>\v\2\1\16\v\b\0003\fc\0>\v\2\1\16\v\b\0003\fd\0003\re\0007\14\14\1:\14\14\r:\r.\f>\v\2\1\16\v\b\0003\fh\0001\rf\0;\r\1\f3\rg\0007\14+\1:\14\14\r:\r.\f3\ri\0:\r0\f>\v\2\1\16\v\t\0003\fj\0007\r\5\2:\r5\f3\rk\0007\0147\1:\14\14\r:\r.\f>\v\2\1\16\v\n\0003\fl\0>\v\2\1\16\v\n\0003\fm\0003\rn\0007\14\14\1:\14\14\r:\r.\f>\v\2\0017\vo\0\16\f\6\0>\v\2\0010\0\0€G\0\1\0\nsetup\1\0\1\bgui\tbold\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\1\bgui\tbold\1\2\0\0\rfilename\1\0\2\tleft\3\1\nright\3\0\1\0\0\1\0\0\0\1\0\1\bgui\tbold\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\1\bgui\tbold\1\2\1\0\15fileformat\18icons_enabled\1\1\0\1\bgui\tbold\bfmt\nupper\vstring\1\2\0\0\15o:encoding\22diagnostics_color\15color_info\1\0\0\15color_warn\1\0\0\vyellow\16color_error\1\0\0\1\0\0\1\0\3\tinfo\tïª \twarn\tï± \nerror\tï— \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\1\bgui\tbold\tcyan\1\0\1\ticon\rï‚… LSP:\0\0\15diff_color\fremoved\1\0\0\bred\rmodified\1\0\0\vorange\nadded\1\0\0\1\0\0\ngreen\fsymbols\1\0\3\nadded\tïƒ¾ \rmodified\tï§‰ \fremoved\tï…† \1\2\0\0\tdiff\1\0\1\bgui\tbold\vviolet\1\2\1\0\vbranch\ticon\bï‘¿\1\0\1\bgui\tbold\fmagenta\1\2\0\0\rfilename\tcond\1\2\0\0\rfilesize\1\0\1\nright\3\1\1\0\1\ncolor\16LualineMode\0\fpadding\1\0\2\tleft\3\0\nright\3\1\ncolor\1\0\0\1\0\0\tblue\0\0\0\0\0\22inactive_sections\14lualine_v\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\1\0\0\afg\1\0\2\23section_separators\5\25component_separators\5\0\0\1\0#\6R\fREPLACE\aix\vI-COMP\a\22s\fV-BLOCK\acv\15EX-COMMAND\avs\vVISUAL\bniR\vNORMAL\aVs\vV-LINE\ant\vNORMAL\ar?\fCONFIRM\bniV\vNORMAL\6\19\fS-BLOCK\bRvx\14V-REPLACE\6!\nSHELL\bno\22\14O-PENDING\bRvc\14V-REPLACE\bnoV\14O-PENDING\bnov\14O-PENDING\6v\vVISUAL\ace\14EX-NORMAL\aic\vI-COMP\6i\vINSERT\arm\tMORE\6V\vV-LINE\aRx\fREPLACE\6n\vNORMAL\6t\rTERMINAL\6\22\fV-BLOCK\6r\fREPLACE\aRv\14V-REPLACE\6s\vSELECT\ano\14O-PENDING\6c\fCOMMAND\aRc\fREPLACE\bniI\vNORMAL\6S\vS-LINE\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\1\0\v\vviolet\f#a9a1e1\ngreen\f#98be65\tcyan\f#008080\vyellow\f#ECBE7B\rdarkblue\f#081633\abg\f#202328\fmagenta\f#c678dd\tblue\f#51afef\vorange\f#FF8800\afg\f#bbc2cf\bred\f#ec5f67\flualine\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\1\2M\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\1\2}\0\4\14\0\a\0\21%\4\0\0004\5\1\0\16\6\2\0>\5\2\4D\b\r€\a\b\2\0T\n\2€%\n\3\0T\v\5€\a\b\4\0T\n\2€%\n\5\0T\v\1€%\n\6\0\16\v\4\0\16\f\n\0\16\r\t\0$\4\r\vB\b\3\3N\bñH\4\2\0\bïª\bï±\fwarning\bï—\nerror\npairs\6 ¿\2\1\0\4\0\14\0\0174\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0001\3\4\0:\3\5\2:\2\a\0013\2\t\0003\3\b\0:\3\n\0023\3\v\0:\3\f\2:\2\r\1>\0\2\1G\0\1\0\15highlights\23indicator_selected\1\0\2\nguibg\f#282c34\nguifg\f#51afef\tfill\1\0\0\1\0\2\nguibg\f#202328\nguifg\f#282c34\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\20show_close_icon\1\22show_buffer_icons\2\16diagnostics\rnvim_lsp\28show_buffer_close_icons\1\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\1\2p\0\2\b\0\4\0\0154\2\0\0007\2\1\0027\2\2\0024\3\0\0007\3\1\0037\3\3\3\16\4\0\0)\5\2\0)\6\2\0)\a\2\0>\3\5\2\16\4\1\0)\5\2\0>\2\4\1G\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvimÐ\1\0\0\a\0\b\2!4\0\0\0004\1\1\0007\1\2\0017\1\3\1'\2\0\0>\1\2\0=\0\0\3\b\1\0\0T\2\20€4\2\1\0007\2\2\0027\2\4\2'\3\0\0\21\4\1\0\16\5\0\0)\6\2\0>\2\5\0028\2\1\2\16\3\2\0007\2\5\2\16\4\1\0\16\5\1\0>\2\4\2\16\3\2\0007\2\6\2%\4\a\0>\2\3\2\n\2\0\0T\2\2€)\2\1\0T\3\1€)\2\2\0H\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2;\0\1\3\0\4\0\0064\1\0\0007\1\1\0017\1\2\0017\2\3\0>\1\2\1G\0\1\0\tbody\20vsnip#anonymous\afn\bvimå\1\0\1\4\3\b\1 +\1\0\0007\1\0\1>\1\1\2\15\0\1\0T\2\4€+\1\0\0007\1\1\1>\1\1\1T\1\22€4\1\2\0007\1\3\0017\1\4\1'\2\1\0>\1\2\2\t\1\0\0T\1\5€+\1\1\0%\2\5\0%\3\6\0>\1\3\1T\1\n€+\1\2\0>\1\1\2\15\0\1\0T\2\4€+\1\0\0007\1\a\1>\1\1\1T\1\2€\16\1\0\0>\1\1\1G\0\1\0\0À\2À\3À\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2¨\1\0\0\3\2\a\1\21+\0\0\0007\0\0\0>\0\1\2\15\0\0\0T\1\4€+\0\0\0007\0\1\0>\0\1\1T\0\v€4\0\2\0007\0\3\0007\0\4\0'\1ÿÿ>\0\2\2\t\0\0\0T\0\4€+\0\1\0%\1\5\0%\2\6\0>\0\3\1G\0\1\0\0À\2À\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2—\3\0\2\6\1\15\0!4\2\0\0007\2\1\0027\3\2\1>\2\2\2+\3\0\0\1\3\2\0T\2\t€4\2\0\0007\2\3\0027\3\2\1'\4\1\0+\5\0\0>\2\4\2%\3\4\0$\2\3\2:\2\2\0014\2\6\0%\3\a\0>\2\2\0027\2\b\0027\2\t\0027\3\5\0016\2\3\2%\3\n\0007\4\5\1$\2\4\2:\2\5\0013\2\f\0007\3\r\0007\3\14\0036\2\3\2:\2\v\1H\1\2\0\1À\tname\vsource\1\0\n\rnvim_lsp\n[LSP]\nvsnip\f[VSnip]\16cmp_tabnine\14[Tabnine]\15treesitter\17[Treesitter]\tpath\v[Path]\tlook\v[Look]\rnvim_lua\n[Lua]\vbuffer\r[Buffer]\26vim-dadbod-completion\r[Dadbod]\18latex_symbols\f[Latex]\tmenu\6 \fdefault\fpresets\flspkind\frequire\tkind\bï›—\bsub\tabbr\blen\vstringà\v\1\0\f\0W\1«\0014\0\0\0%\1\1\0>\0\2\2'\0012\0001\2\2\0001\3\3\0007\4\4\0003\5\6\0003\6\5\0:\6\a\0053\6\t\0001\a\b\0:\a\n\6:\6\v\0053\6\19\0007\a\f\0007\b\f\0007\b\r\b3\t\16\0007\n\14\0007\n\15\n:\n\17\t>\b\2\0023\t\18\0>\a\3\2:\a\20\0067\a\f\0007\b\f\0007\b\21\b3\t\22\0007\n\14\0007\n\15\n:\n\17\t>\b\2\0023\t\23\0>\a\3\2:\a\24\0067\a\f\0007\b\f\0007\b\25\b'\tüÿ>\b\2\0023\t\26\0>\a\3\2:\a\27\0067\a\f\0007\b\f\0007\b\25\b'\t\4\0>\b\2\0023\t\28\0>\a\3\2:\a\29\0067\a\f\0007\b\f\0007\b\30\b>\b\1\0023\t\31\0>\a\3\2:\a \0067\a!\0007\a\"\a:\a#\0067\a\f\0003\b%\0007\t\f\0007\t$\t>\t\1\2:\t&\b7\t\f\0007\t'\t>\t\1\2:\t(\b>\a\2\2:\a)\0067\a\f\0003\b.\0007\t\f\0007\t*\t3\n-\0007\v+\0007\v,\v:\v\17\n>\t\2\2:\t&\b7\t\f\0007\t*\t3\n/\0>\t\2\2:\t(\b>\a\2\2:\a0\0067\a\f\0001\b1\0003\t2\0>\a\3\2:\a3\0067\a\f\0001\b4\0003\t5\0>\a\3\2:\a6\6:\6\f\0052\6\a\0003\a7\0;\a\1\0063\a8\0;\a\2\0063\a9\0;\a\3\0063\a:\0;\a\4\0063\a;\0003\b<\0:\b=\a;\a\5\0063\a>\0;\a\6\6:\6?\0053\6@\0001\aA\0:\aB\6:\6C\5>\4\2\0014\4\0\0%\5D\0>\4\2\0027\5E\0\16\6\5\0007\5F\5%\aG\0007\bH\0043\tJ\0003\nI\0:\nK\t>\b\2\0=\5\2\0017\5L\0047\6L\4\19\6\6\0\20\6\0\6%\aM\0009\a\6\0057\5\4\0007\5N\5%\6O\0003\aQ\0003\bP\0:\b\a\a7\b!\0007\b?\b2\t\3\0003\nR\0;\n\1\t2\n\3\0003\vS\0;\v\1\n>\b\3\2:\b?\a>\5\3\0017\5\4\0007\5N\5%\6T\0003\aV\0002\b\3\0003\tU\0;\t\1\b:\b?\a>\5\3\0010\0\0€G\0\1\0\1\0\0\1\0\1\tname\vbuffer\6/\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\1\0\1\17autocomplete\1\6:\fcmdline\vracket\tlisp\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\15formatting\vformat\0\1\0\1\15deprecated\2\fsources\1\0\1\tname\26vim-dadbod-completion\foptiona\1\0\2\tloud\2\17convert_case\2\1\0\3\19keyword_length\3\2\tname\tlook\19max_item_count\3\5\1\0\1\tname\tpath\1\0\2\19max_item_count\3\n\tname\vbuffer\1\0\1\tname\rnvim_lsp\1\0\1\tname\nvsnip\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\1\0\0\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-p>\1\3\0\0\6i\6c\1\0\0\21select_prev_item\n<C-n>\1\0\0\1\3\0\0\6i\6c\rbehavior\1\0\0\vSelect\19SelectBehavior\21select_next_item\fmapping\fsnippet\vexpand\1\0\0\0\15completion\1\0\0\1\0\1\16completeopt\26menu,menuone,noinsert\nsetup\0\0\bcmp\frequire\2\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\1\0023\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\ndapui\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    config = { "\27LJ\1\2V\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\15all_frames\2\nsetup\26nvim-dap-virtual-text\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-hlslens"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\1\0021\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\blsp\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://github.com/windwp/nvim-spectre"
  },
  ["nvim-toggleterm.lua"] = {
    config = { "\27LJ\1\2Î\1\0\0\3\0\a\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0004\2\4\0007\2\5\0027\2\6\2:\2\6\1>\0\2\1G\0\1\0\nshell\6o\bvim\1\0\b\20shade_terminals\1\20insert_mappings\1\tsize\3\15\17persist_size\2\20start_in_insert\2\14direction\btab\18close_on_exit\2\17hide_numbers\1\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua",
    url = "https://github.com/akinsho/nvim-toggleterm.lua"
  },
  ["nvim-treesitter"] = {
    config = { '\27LJ\1\2ƒ\a\0\0\5\0&\0-4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0003\3\4\0:\3\5\2:\2\a\0012\2\0\0:\2\b\0013\2\t\0002\3\0\0:\3\n\2:\2\v\0013\2\f\0:\2\r\0013\2\14\0:\2\15\0013\2\16\0:\2\17\0013\2\19\0003\3\18\0:\3\20\0023\3\21\0:\3\22\0023\3\23\0003\4\24\0:\4\25\3:\3\26\0023\3\27\0003\4\28\0:\4\25\3:\3\29\2:\2\30\0013\2\31\0:\2 \0013\2#\0003\3!\0003\4"\0:\4\25\3:\3$\2:\2%\1>\0\2\1G\0\1\0\16textobjects\vselect\1\0\0\1\0\4\aif\20@function.inner\aaf\20@function.outer\aac\17@class.outer\aic\17@class.inner\1\0\2\14lookahead\2\venable\2\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\rrefactor\15navigation\1\0\5\24goto_previous_usage\n<a-#>\20goto_definition\bgnd\21list_definitions\bgnD\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\1\0\1\venable\2\17smart_rename\fkeymaps\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\fmatchip\1\0\1\venable\2\14autopairs\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\19ignore_install\fautotag\1\0\1\21ensure_installed\ball\14filetypes\1\b\0\0\thtml\15javascript\20javascriptreact\20typescriptreact\vsvelte\bvue\bxml\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0' },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    config = { "\27LJ\1\2£\1\0\0\4\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\5\0003\3\4\0:\3\6\2:\2\a\1>\0\2\1G\0\1\0\rpatterns\fdefault\1\0\0\1\4\0\0\nclass\rfunction\vmethod\1\0\3\14max_lines\3\1\rthrottle\2\venable\2\nsetup\23treesitter-context\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/romgrk/nvim-treesitter-context"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\1\2Ë\1\0\0\3\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0013\2\6\0:\2\a\1>\0\2\1G\0\1\0\rpatterns\1\b\0\0\t.git\v_darcs\b.hg\t.bzr\t.svn\rMakefile\17package.json\22detection_methods\1\0\2\16show_hidden\2\17silent_chdir\1\1\3\0\0\blsp\fpattern\nsetup\17project_nvim\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["rest.nvim"] = {
    config = { "\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14rest-nvim\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/rest.nvim",
    url = "https://github.com/NTBBloodbath/rest.nvim"
  },
  rnvimr = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/rnvimr",
    url = "https://github.com/kevinhwang91/rnvimr"
  },
  ["spellsitter.nvim"] = {
    config = { "\27LJ\1\2e\0\0\3\0\5\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0002\2\0\0:\2\4\1>\0\2\1G\0\1\0\rcaptures\1\0\2\ahl\rSpellBad\venable\2\nsetup\16spellsitter\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/spellsitter.nvim",
    url = "https://github.com/lewis6991/spellsitter.nvim"
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim",
    url = "https://github.com/nvim-telescope/telescope-dap.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-fzf-writer.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/telescope-fzf-writer.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-writer.nvim"
  },
  ["telescope-hop.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/telescope-hop.nvim",
    url = "https://github.com/nvim-telescope/telescope-hop.nvim"
  },
  ["telescope.nvim"] = {
    config = { '\27LJ\1\2E\0\0\2\1\4\0\b+\0\0\0007\0\0\0004\1\1\0007\1\2\0017\1\3\1>\1\1\0=\0\0\1G\0\1\0\1À\nbufnr\afn\bvim\19toggle_preview»\1\0\1\5\1\n\0\0173\1\1\0+\2\0\0007\2\0\2:\2\2\1+\2\0\0007\2\3\2:\2\4\0014\2\5\0%\3\6\0>\2\2\0027\2\a\0027\2\b\0027\2\t\2\16\3\0\0\16\4\1\0>\2\3\1G\0\1\0\0À\14_hop_loop\bhop\15extensions\14telescope\frequire\18loop_callback\28send_selected_to_qflist\rcallback\1\0\0\21toggle_selectionE\0\0\2\1\4\0\b+\0\0\0007\0\0\0004\1\1\0007\1\2\0017\1\3\1>\1\1\0=\0\0\1G\0\1\0\1À\nbufnr\afn\bvim\19toggle_preview»\1\0\1\5\1\n\0\0173\1\1\0+\2\0\0007\2\0\2:\2\2\1+\2\0\0007\2\3\2:\2\4\0014\2\5\0%\3\6\0>\2\2\0027\2\a\0027\2\b\0027\2\t\2\16\3\0\0\16\4\1\0>\2\3\1G\0\1\0\0À\14_hop_loop\bhop\15extensions\14telescope\frequire\18loop_callback\28send_selected_to_qflist\rcallback\1\0\0\21toggle_selection€\6\1\0\n\0$\0S4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0024\2\0\0%\3\3\0>\2\2\0024\3\0\0%\4\4\0>\3\2\0027\3\5\0033\4\25\0003\5\23\0003\6\17\0003\a\a\0007\b\6\2:\b\b\a1\b\t\0:\b\n\a4\b\v\0%\t\4\0>\b\2\0027\b\f\b7\b\r\b7\b\r\b:\b\14\a1\b\15\0:\b\16\a:\a\18\0063\a\19\0007\b\6\2:\b\b\a1\b\20\0:\b\n\a4\b\v\0%\t\4\0>\b\2\0027\b\f\b7\b\r\b7\b\r\b:\b\14\a1\b\21\0:\b\16\a:\a\22\6:\6\24\5:\5\26\0043\5\28\0003\6\27\0:\6\29\0053\6\30\0:\6\r\0053\6\31\0:\6 \5:\5\f\4>\3\2\0014\3\0\0%\4\4\0>\3\2\0027\3!\3%\4"\0>\3\2\0014\3\0\0%\4\4\0>\3\2\0027\3!\3%\4#\0>\3\2\0014\3\0\0%\4\4\0>\3\2\0027\3!\3%\4\29\0>\3\2\0014\3\0\0%\4\4\0>\3\2\0027\3!\3%\4\r\0>\3\2\0010\0\0€G\0\1\0\rprojects\bdap\19load_extension\15fzf_writer\1\0\3\28minimum_grep_characters\3\2\20use_highlighter\2\29minimum_files_characters\3\2\1\0\2\16trace_entry\2\20reset_selection\2\bfzf\1\0\0\1\0\4\28override_generic_sorter\1\14case_mode\15smart_case\25override_file_sorter\2\nfuzzy\2\rdefaults\1\0\0\rmappings\1\0\0\6n\0\0\1\0\0\6i\1\0\0\14<C-space>\0\n<C-h>\bhop\15extensions\6R\n<C-i>\0\n<C-o>\1\0\0\22open_with_trouble\nsetup\14telescope trouble.providers.telescope\29telescope.actions.layout\22telescope.actions\frequire\0' },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\1\2;\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\1\0025\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-dadbod",
    url = "https://github.com/tpope/vim-dadbod"
  },
  ["vim-dadbod-completion"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-dadbod-completion",
    url = "https://github.com/kristijanhusak/vim-dadbod-completion"
  },
  ["vim-dadbod-ui"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui",
    url = "https://github.com/kristijanhusak/vim-dadbod-ui"
  },
  ["vim-interestingwords"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-interestingwords",
    url = "https://github.com/lfv89/vim-interestingwords"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-translator"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-translator",
    url = "https://github.com/voldikss/vim-translator"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\1\2•\a\0\0\5\0.\0;4\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\1\3\0003\2\21\0003\3\4\0003\4\5\0:\4\6\0033\4\a\0:\4\b\0033\4\t\0:\4\n\0033\4\v\0:\4\f\0033\4\r\0:\4\14\0033\4\15\0:\4\16\0033\4\17\0:\4\18\0033\4\19\0:\4\20\3:\3\22\0023\3\23\0:\3\24\0023\3\25\0003\4\26\0:\4\27\3:\3\28\0023\3\29\0:\3\20\0023\3\30\0:\3\31\0023\3 \0:\3!\0023\3\"\0:\3\b\0023\3#\0:\3$\0023\3%\0:\3&\0023\3'\0:\3\18\0023\3(\0:\3\f\0023\3)\0:\3\14\0023\3*\0:\3+\0023\3,\0:\3\16\0023\3-\0>\1\3\1G\0\1\0\1\0\1\vprefix\r<leader>\1\0\1\tname\15Git Action\6p\1\0\1\tname\27Paste System Clipboard\1\0\1\tname\14Workspace\1\0\1\tname\14Translate\1\0\1\tname\29Session & Spectre Action\6r\1\0\1\tname\27Ranger & Rename & Rest\6o\1\0\1\tname\29Operate Dashboard Action\1\0\1\tname\22Markdown & Format\6l\1\0\1\tname\20List Of Trouble\6x\1\0\1\tname\25Close Current Buffer\1\0\1\tname\15DAP Action\6c\6j\1\0\1\tname\21Java Code Action\1\0\1\tname\16Code Action\6b\1\0\1\tname\19Buffer Operate\6f\1\0\0\6d\1\0\1\tname\25DAP Telescope Action\6s\1\0\1\tname\fSpectre\6g\1\0\1\tname\15Git Action\6w\1\0\1\tname\27Workspace & LSP Action\6t\1\0\1\tname\27TreeSitter & FileTypes\6h\1\0\1\tname\31History & Help & Highlight\6m\1\0\1\tname\tMark\6i\1\0\1\tname\23Buildin & Reloader\1\0\1\tname\31Find By Telescope & Format\rregister\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\1\2Š\1\0\0\4\0\6\0\n3\0\0\0003\1\1\0004\2\2\0007\2\3\0027\2\4\2'\3\0\0>\2\2\2;\2\2\1:\1\5\0H\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\4\0\0\21--stdin-filepath\0\19--single-quote\1\0\2\nstdin\2\bexe\rprettierD\0\0\2\0\3\0\0043\0\0\0003\1\1\0:\1\2\0H\0\2\0\targs\1\2\0\0\18--emit=stdout\1\0\2\nstdin\2\bexe\frustfmtJ\0\0\2\0\3\0\0043\0\0\0003\1\1\0:\1\2\0H\0\2\0\targs\1\3\0\0\19--indent-width\3\2\1\0\2\nstdin\2\bexe\15lua-format¢\1\1\0\5\0\f\0\0214\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\5\0002\3\3\0001\4\4\0;\4\1\3:\3\6\0022\3\3\0001\4\a\0;\4\1\3:\3\b\0022\3\3\0001\4\t\0;\4\1\3:\3\n\2:\2\v\1>\0\2\1G\0\1\0\rfiletype\blua\0\trust\0\15javascript\1\0\0\0\1\0\1\flogging\1\nsetup\14formatter\frequire\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring('\27LJ\1\2ƒ\a\0\0\5\0&\0-4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0003\3\4\0:\3\5\2:\2\a\0012\2\0\0:\2\b\0013\2\t\0002\3\0\0:\3\n\2:\2\v\0013\2\f\0:\2\r\0013\2\14\0:\2\15\0013\2\16\0:\2\17\0013\2\19\0003\3\18\0:\3\20\0023\3\21\0:\3\22\0023\3\23\0003\4\24\0:\4\25\3:\3\26\0023\3\27\0003\4\28\0:\4\25\3:\3\29\2:\2\30\0013\2\31\0:\2 \0013\2#\0003\3!\0003\4"\0:\4\25\3:\3$\2:\2%\1>\0\2\1G\0\1\0\16textobjects\vselect\1\0\0\1\0\4\aif\20@function.inner\aaf\20@function.outer\aac\17@class.outer\aic\17@class.inner\1\0\2\14lookahead\2\venable\2\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\rrefactor\15navigation\1\0\5\24goto_previous_usage\n<a-#>\20goto_definition\bgnd\21list_definitions\bgnD\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\1\0\1\venable\2\17smart_rename\fkeymaps\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\fmatchip\1\0\1\venable\2\14autopairs\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\19ignore_install\fautotag\1\0\1\21ensure_installed\ball\14filetypes\1\b\0\0\thtml\15javascript\20javascriptreact\20typescriptreact\vsvelte\bvue\bxml\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0', "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\1\2p\0\2\b\0\4\0\0154\2\0\0007\2\1\0027\2\2\0024\3\0\0007\3\1\0037\3\3\3\16\4\0\0)\5\2\0)\6\2\0)\a\2\0>\3\5\2\16\4\1\0)\5\2\0>\2\4\1G\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvimÐ\1\0\0\a\0\b\2!4\0\0\0004\1\1\0007\1\2\0017\1\3\1'\2\0\0>\1\2\0=\0\0\3\b\1\0\0T\2\20€4\2\1\0007\2\2\0027\2\4\2'\3\0\0\21\4\1\0\16\5\0\0)\6\2\0>\2\5\0028\2\1\2\16\3\2\0007\2\5\2\16\4\1\0\16\5\1\0>\2\4\2\16\3\2\0007\2\6\2%\4\a\0>\2\3\2\n\2\0\0T\2\2€)\2\1\0T\3\1€)\2\2\0H\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2;\0\1\3\0\4\0\0064\1\0\0007\1\1\0017\1\2\0017\2\3\0>\1\2\1G\0\1\0\tbody\20vsnip#anonymous\afn\bvimå\1\0\1\4\3\b\1 +\1\0\0007\1\0\1>\1\1\2\15\0\1\0T\2\4€+\1\0\0007\1\1\1>\1\1\1T\1\22€4\1\2\0007\1\3\0017\1\4\1'\2\1\0>\1\2\2\t\1\0\0T\1\5€+\1\1\0%\2\5\0%\3\6\0>\1\3\1T\1\n€+\1\2\0>\1\1\2\15\0\1\0T\2\4€+\1\0\0007\1\a\1>\1\1\1T\1\2€\16\1\0\0>\1\1\1G\0\1\0\0À\2À\3À\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2¨\1\0\0\3\2\a\1\21+\0\0\0007\0\0\0>\0\1\2\15\0\0\0T\1\4€+\0\0\0007\0\1\0>\0\1\1T\0\v€4\0\2\0007\0\3\0007\0\4\0'\1ÿÿ>\0\2\2\t\0\0\0T\0\4€+\0\1\0%\1\5\0%\2\6\0>\0\3\1G\0\1\0\0À\2À\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2—\3\0\2\6\1\15\0!4\2\0\0007\2\1\0027\3\2\1>\2\2\2+\3\0\0\1\3\2\0T\2\t€4\2\0\0007\2\3\0027\3\2\1'\4\1\0+\5\0\0>\2\4\2%\3\4\0$\2\3\2:\2\2\0014\2\6\0%\3\a\0>\2\2\0027\2\b\0027\2\t\0027\3\5\0016\2\3\2%\3\n\0007\4\5\1$\2\4\2:\2\5\0013\2\f\0007\3\r\0007\3\14\0036\2\3\2:\2\v\1H\1\2\0\1À\tname\vsource\1\0\n\rnvim_lsp\n[LSP]\nvsnip\f[VSnip]\16cmp_tabnine\14[Tabnine]\15treesitter\17[Treesitter]\tpath\v[Path]\tlook\v[Look]\rnvim_lua\n[Lua]\vbuffer\r[Buffer]\26vim-dadbod-completion\r[Dadbod]\18latex_symbols\f[Latex]\tmenu\6 \fdefault\fpresets\flspkind\frequire\tkind\bï›—\bsub\tabbr\blen\vstringà\v\1\0\f\0W\1«\0014\0\0\0%\1\1\0>\0\2\2'\0012\0001\2\2\0001\3\3\0007\4\4\0003\5\6\0003\6\5\0:\6\a\0053\6\t\0001\a\b\0:\a\n\6:\6\v\0053\6\19\0007\a\f\0007\b\f\0007\b\r\b3\t\16\0007\n\14\0007\n\15\n:\n\17\t>\b\2\0023\t\18\0>\a\3\2:\a\20\0067\a\f\0007\b\f\0007\b\21\b3\t\22\0007\n\14\0007\n\15\n:\n\17\t>\b\2\0023\t\23\0>\a\3\2:\a\24\0067\a\f\0007\b\f\0007\b\25\b'\tüÿ>\b\2\0023\t\26\0>\a\3\2:\a\27\0067\a\f\0007\b\f\0007\b\25\b'\t\4\0>\b\2\0023\t\28\0>\a\3\2:\a\29\0067\a\f\0007\b\f\0007\b\30\b>\b\1\0023\t\31\0>\a\3\2:\a \0067\a!\0007\a\"\a:\a#\0067\a\f\0003\b%\0007\t\f\0007\t$\t>\t\1\2:\t&\b7\t\f\0007\t'\t>\t\1\2:\t(\b>\a\2\2:\a)\0067\a\f\0003\b.\0007\t\f\0007\t*\t3\n-\0007\v+\0007\v,\v:\v\17\n>\t\2\2:\t&\b7\t\f\0007\t*\t3\n/\0>\t\2\2:\t(\b>\a\2\2:\a0\0067\a\f\0001\b1\0003\t2\0>\a\3\2:\a3\0067\a\f\0001\b4\0003\t5\0>\a\3\2:\a6\6:\6\f\0052\6\a\0003\a7\0;\a\1\0063\a8\0;\a\2\0063\a9\0;\a\3\0063\a:\0;\a\4\0063\a;\0003\b<\0:\b=\a;\a\5\0063\a>\0;\a\6\6:\6?\0053\6@\0001\aA\0:\aB\6:\6C\5>\4\2\0014\4\0\0%\5D\0>\4\2\0027\5E\0\16\6\5\0007\5F\5%\aG\0007\bH\0043\tJ\0003\nI\0:\nK\t>\b\2\0=\5\2\0017\5L\0047\6L\4\19\6\6\0\20\6\0\6%\aM\0009\a\6\0057\5\4\0007\5N\5%\6O\0003\aQ\0003\bP\0:\b\a\a7\b!\0007\b?\b2\t\3\0003\nR\0;\n\1\t2\n\3\0003\vS\0;\v\1\n>\b\3\2:\b?\a>\5\3\0017\5\4\0007\5N\5%\6T\0003\aV\0002\b\3\0003\tU\0;\t\1\b:\b?\a>\5\3\0010\0\0€G\0\1\0\1\0\0\1\0\1\tname\vbuffer\6/\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\1\0\1\17autocomplete\1\6:\fcmdline\vracket\tlisp\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\15formatting\vformat\0\1\0\1\15deprecated\2\fsources\1\0\1\tname\26vim-dadbod-completion\foptiona\1\0\2\tloud\2\17convert_case\2\1\0\3\19keyword_length\3\2\tname\tlook\19max_item_count\3\5\1\0\1\tname\tpath\1\0\2\19max_item_count\3\n\tname\vbuffer\1\0\1\tname\rnvim_lsp\1\0\1\tname\nvsnip\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\1\0\0\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-p>\1\3\0\0\6i\6c\1\0\0\21select_prev_item\n<C-n>\1\0\0\1\3\0\0\6i\6c\rbehavior\1\0\0\vSelect\19SelectBehavior\21select_next_item\fmapping\fsnippet\vexpand\1\0\0\0\15completion\1\0\0\1\0\1\16completeopt\26menu,menuone,noinsert\nsetup\0\0\bcmp\frequire\2\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\1\2•\a\0\0\5\0.\0;4\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\1\3\0003\2\21\0003\3\4\0003\4\5\0:\4\6\0033\4\a\0:\4\b\0033\4\t\0:\4\n\0033\4\v\0:\4\f\0033\4\r\0:\4\14\0033\4\15\0:\4\16\0033\4\17\0:\4\18\0033\4\19\0:\4\20\3:\3\22\0023\3\23\0:\3\24\0023\3\25\0003\4\26\0:\4\27\3:\3\28\0023\3\29\0:\3\20\0023\3\30\0:\3\31\0023\3 \0:\3!\0023\3\"\0:\3\b\0023\3#\0:\3$\0023\3%\0:\3&\0023\3'\0:\3\18\0023\3(\0:\3\f\0023\3)\0:\3\14\0023\3*\0:\3+\0023\3,\0:\3\16\0023\3-\0>\1\3\1G\0\1\0\1\0\1\vprefix\r<leader>\1\0\1\tname\15Git Action\6p\1\0\1\tname\27Paste System Clipboard\1\0\1\tname\14Workspace\1\0\1\tname\14Translate\1\0\1\tname\29Session & Spectre Action\6r\1\0\1\tname\27Ranger & Rename & Rest\6o\1\0\1\tname\29Operate Dashboard Action\1\0\1\tname\22Markdown & Format\6l\1\0\1\tname\20List Of Trouble\6x\1\0\1\tname\25Close Current Buffer\1\0\1\tname\15DAP Action\6c\6j\1\0\1\tname\21Java Code Action\1\0\1\tname\16Code Action\6b\1\0\1\tname\19Buffer Operate\6f\1\0\0\6d\1\0\1\tname\25DAP Telescope Action\6s\1\0\1\tname\fSpectre\6g\1\0\1\tname\15Git Action\6w\1\0\1\tname\27Workspace & LSP Action\6t\1\0\1\tname\27TreeSitter & FileTypes\6h\1\0\1\tname\31History & Help & Highlight\6m\1\0\1\tname\tMark\6i\1\0\1\tname\23Buildin & Reloader\1\0\1\tname\31Find By Telescope & Format\rregister\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-treesitter-context
time([[Config for nvim-treesitter-context]], true)
try_loadstring("\27LJ\1\2£\1\0\0\4\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\5\0003\3\4\0:\3\6\2:\2\a\1>\0\2\1G\0\1\0\rpatterns\fdefault\1\0\0\1\4\0\0\nclass\rfunction\vmethod\1\0\3\14max_lines\3\1\rthrottle\2\venable\2\nsetup\23treesitter-context\frequire\0", "config", "nvim-treesitter-context")
time([[Config for nvim-treesitter-context]], false)
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
try_loadstring("\27LJ\1\2\\\0\0\3\0\5\1\0154\0\0\0007\0\1\0007\0\2\0004\1\0\0007\1\1\0017\1\3\1%\2\4\0>\1\2\0=\0\0\2\t\0\0\0T\0\2€)\0\1\0T\1\1€)\0\2\0H\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\2\0\3\0\f4\0\0\0007\0\1\0007\0\2\0'\1\0\0>\0\2\2'\1P\0\0\1\0\0T\0\2€)\0\1\0T\1\1€)\0\2\0H\0\2\0\rwinwidth\afn\bvim–\1\0\0\5\0\a\0\0274\0\0\0007\0\1\0007\0\2\0%\1\3\0>\0\2\0024\1\0\0007\1\1\0017\1\4\1%\2\5\0\16\3\0\0%\4\6\0$\3\4\3>\1\3\2\r\2\1\0T\2\v€\19\2\1\0'\3\0\0\1\3\2\0T\2\4€\19\2\1\0\19\3\0\0\0\2\3\0T\2\2€)\2\1\0T\3\1€)\2\2\0H\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvim:\0\0\1\0\4\0\0064\0\0\0007\0\1\0007\0\2\0>\0\1\0027\0\3\0H\0\2\0\tmode\18nvim_get_mode\bapi\bvim0\0\0\3\2\1\0\t+\0\0\0>\0\1\2+\1\1\0006\1\0\1\14\0\1\0T\2\2€%\2\0\0H\2\2\0H\1\2\0\4À\3À\5I\0\1\4\1\4\0\b4\1\0\0007\1\1\1+\2\0\0007\2\2\0027\2\3\2\16\3\0\0>\1\3\1G\0\1\0\6À\14lualine_c\rsections\vinsert\ntableI\0\1\4\1\4\0\b4\1\0\0007\1\1\1+\2\0\0007\2\2\0027\2\3\2\16\3\0\0>\1\3\1G\0\1\0\6À\14lualine_x\rsections\vinsert\ntableR\0\1\4\1\4\0\b4\1\0\0007\1\1\1+\2\0\0007\2\2\0027\2\3\2\16\3\0\0>\1\3\1G\0\1\0\6À\14lualine_c\22inactive_sections\vinsert\ntableR\0\1\4\1\4\0\b4\1\0\0007\1\1\1+\2\0\0007\2\2\0027\2\3\2\16\3\0\0>\1\3\1G\0\1\0\6À\14lualine_x\22inactive_sections\vinsert\ntable\19\0\0\1\0\1\0\2%\0\0\0H\0\2\0\bâ–ŠÌ\5\0\0\6\0023\0z3\0\1\0+\1\0\0007\1\0\1:\1\2\0+\1\0\0007\1\3\1:\1\4\0+\1\0\0007\1\3\1:\1\5\0+\1\0\0007\1\3\1:\1\6\0+\1\0\0007\1\3\1:\1\a\0+\1\0\0007\1\0\1:\1\b\0+\1\0\0007\1\0\1:\1\t\0+\1\0\0007\1\0\1:\1\n\0+\1\0\0007\1\0\1:\1\v\0+\1\0\0007\1\f\1:\1\r\0+\1\0\0007\1\f\1:\1\14\0+\1\0\0007\1\f\1:\1\15\0+\1\0\0007\1\f\1:\1\16\0+\1\0\0007\1\f\1:\1\17\0+\1\0\0007\1\f\1:\1\18\0+\1\0\0007\1\19\1:\1\20\0+\1\0\0007\1\19\1:\1\21\0+\1\0\0007\1\19\1:\1\22\0+\1\0\0007\1\23\1:\1\24\0+\1\0\0007\1\23\1:\1\25\0+\1\0\0007\1\23\1:\1\26\0+\1\0\0007\1\0\1:\1\27\0+\1\0\0007\1\0\1:\1\28\0+\1\0\0007\1\0\1:\1\29\0+\1\0\0007\1\0\1:\1\30\0+\1\0\0007\1\0\1:\1\31\0+\1\0\0007\1\0\1:\1 \0+\1\0\0007\1!\1:\1\"\0+\1\0\0007\1!\1:\1#\0+\1\0\0007\1\0\1:\1$\0+\1\0\0007\1%\1:\1&\0+\1\0\0007\1%\1:\1'\0+\1\0\0007\1%\1:\1(\0+\1\0\0007\1\3\1:\1)\0+\1\0\0007\1\3\1:\1*\0004\1+\0007\1,\0017\1-\1%\2.\0004\3+\0007\3/\0037\0030\3>\3\1\0026\3\3\0%\0041\0+\5\0\0007\0052\5$\2\5\2>\1\2\1+\1\1\0@\1\1\0\1À\5À\abg\f guibg=\tmode\afn$hi! LualineMode gui=bold guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\6c\fmagenta\bRvx\bRvc\aRv\aRx\aRc\6R\aix\aic\6i\ngreen\6\19\6S\6s\vorange\a\22s\6\22\aVs\6V\avs\6v\tblue\ant\bniV\bniR\bniI\bno\22\bnoV\bnov\ano\bred\6n\1\0\0\vviolet\18\0\0\1\0\1\0\2%\0\0\0H\0\2\0\a%=³\3\0\0\r\0\21\2B%\0\0\0004\1\1\0007\1\2\0017\1\3\1'\2\0\0%\3\4\0>\1\3\0024\2\1\0007\2\5\0027\2\6\2>\2\1\0024\3\a\0\16\4\2\0>\3\2\2\v\3\0\0T\3\1€H\0\2\0%\3\b\0004\4\t\0\16\5\2\0>\4\2\4T\a\24€7\t\n\b7\t\v\t\15\0\t\0T\n\20€4\n\1\0007\n\f\n7\n\r\n\16\v\t\0\16\f\1\0>\n\3\2\b\n\0\0T\n\f€7\n\14\b4\v\1\0007\v\f\v7\v\15\v>\v\1\0026\n\v\n\n\n\0\0T\n\4€\16\n\3\0007\v\16\b%\f\17\0$\3\f\nA\a\3\3N\aæ4\4\18\0007\4\19\4\16\5\3\0>\4\2\2'\5\0\0\1\5\4\0T\4\n€4\4\18\0007\4\20\4\16\5\3\0'\6\1\0004\a\18\0007\a\19\a\16\b\3\0>\a\2\2\21\a\1\a@\4\4\0H\0\2\0\bsub\blen\vstring\6 \tname\nbufnr\21attached_buffers\nindex\afn\14filetypes\vconfig\vipairs\5\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\18No Active Lspþÿÿÿ\31\2\19\0\0\1\0\1\0\2%\0\0\0H\0\2\0\bâ–Š…\19\1\0\16\0p\0å\0014\0\0\0%\1\1\0>\0\2\0023\1\2\0003\2\4\0001\3\3\0:\3\5\0021\3\6\0:\3\a\0021\3\b\0:\3\t\0023\3\n\0001\4\v\0001\5\f\0003\6\25\0003\a\r\0003\b\19\0003\t\17\0003\n\15\0007\v\14\1:\v\14\n7\v\16\1:\v\16\n:\n\18\t:\t\20\b3\t\22\0003\n\21\0007\v\14\1:\v\14\n7\v\16\1:\v\16\n:\n\18\t:\t\23\b:\b\24\a:\a\26\0063\a\27\0002\b\0\0:\b\28\a2\b\0\0:\b\29\a2\b\0\0:\b\30\a2\b\0\0:\b\31\a2\b\0\0:\b \a2\b\0\0:\b!\a:\a\"\0063\a#\0002\b\0\0:\b\28\a2\b\0\0:\b$\a2\b\0\0:\b\30\a2\b\0\0:\b\31\a2\b\0\0:\b \a2\b\0\0:\b!\a:\a%\0061\a&\0001\b'\0001\t(\0001\n)\0\16\v\a\0003\f-\0001\r*\0;\r\1\f3\r,\0007\14+\1:\14\14\r:\r.\f3\r/\0:\r0\f>\v\2\1\16\v\a\0003\f2\0001\r1\0;\r\1\f3\r3\0:\r0\f>\v\2\1\16\v\a\0003\f4\0007\r\5\2:\r5\f>\v\2\1\16\v\a\0003\f6\0007\r\5\2:\r5\f3\r8\0007\0147\1:\14\14\r:\r.\f>\v\2\1\16\v\a\0003\f9\0003\r;\0007\14:\1:\14\14\r:\r.\f>\v\2\1\16\v\a\0003\f<\0003\r=\0:\r>\f3\rA\0003\14@\0007\15?\1:\15\14\14:\14B\r3\14D\0007\15C\1:\15\14\14:\14E\r3\14G\0007\15F\1:\15\14\14:\14H\r:\rI\f7\r\a\2:\r5\f>\v\2\1\16\v\a\0002\f\3\0001\rJ\0;\r\1\f>\v\2\1\16\v\a\0003\fL\0001\rK\0;\r\1\f3\rN\0007\14M\1:\14\14\r:\r.\f>\v\2\1\16\v\b\0003\fO\0003\rP\0:\rQ\f3\rR\0:\r>\f3\rT\0003\14S\0007\15F\1:\15\14\14:\14U\r3\14W\0007\15V\1:\15\14\14:\14X\r3\14Y\0007\15M\1:\15\14\14:\14Z\r:\r[\f>\v\2\1\16\v\b\0003\f\\\0004\r]\0007\r^\r:\r_\f7\r\a\2:\r5\f3\r`\0007\14?\1:\14\14\r:\r.\f>\v\2\1\16\v\b\0003\fa\0004\r]\0007\r^\r:\r_\f3\rb\0007\14?\1:\14\14\r:\r.\f>\v\2\1\16\v\b\0003\fc\0>\v\2\1\16\v\b\0003\fd\0003\re\0007\14\14\1:\14\14\r:\r.\f>\v\2\1\16\v\b\0003\fh\0001\rf\0;\r\1\f3\rg\0007\14+\1:\14\14\r:\r.\f3\ri\0:\r0\f>\v\2\1\16\v\t\0003\fj\0007\r\5\2:\r5\f3\rk\0007\0147\1:\14\14\r:\r.\f>\v\2\1\16\v\n\0003\fl\0>\v\2\1\16\v\n\0003\fm\0003\rn\0007\14\14\1:\14\14\r:\r.\f>\v\2\0017\vo\0\16\f\6\0>\v\2\0010\0\0€G\0\1\0\nsetup\1\0\1\bgui\tbold\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\1\bgui\tbold\1\2\0\0\rfilename\1\0\2\tleft\3\1\nright\3\0\1\0\0\1\0\0\0\1\0\1\bgui\tbold\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\1\bgui\tbold\1\2\1\0\15fileformat\18icons_enabled\1\1\0\1\bgui\tbold\bfmt\nupper\vstring\1\2\0\0\15o:encoding\22diagnostics_color\15color_info\1\0\0\15color_warn\1\0\0\vyellow\16color_error\1\0\0\1\0\0\1\0\3\tinfo\tïª \twarn\tï± \nerror\tï— \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\1\bgui\tbold\tcyan\1\0\1\ticon\rï‚… LSP:\0\0\15diff_color\fremoved\1\0\0\bred\rmodified\1\0\0\vorange\nadded\1\0\0\1\0\0\ngreen\fsymbols\1\0\3\nadded\tïƒ¾ \rmodified\tï§‰ \fremoved\tï…† \1\2\0\0\tdiff\1\0\1\bgui\tbold\vviolet\1\2\1\0\vbranch\ticon\bï‘¿\1\0\1\bgui\tbold\fmagenta\1\2\0\0\rfilename\tcond\1\2\0\0\rfilesize\1\0\1\nright\3\1\1\0\1\ncolor\16LualineMode\0\fpadding\1\0\2\tleft\3\0\nright\3\1\ncolor\1\0\0\1\0\0\tblue\0\0\0\0\0\22inactive_sections\14lualine_v\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\1\0\0\afg\1\0\2\23section_separators\5\25component_separators\5\0\0\1\0#\6R\fREPLACE\aix\vI-COMP\a\22s\fV-BLOCK\acv\15EX-COMMAND\avs\vVISUAL\bniR\vNORMAL\aVs\vV-LINE\ant\vNORMAL\ar?\fCONFIRM\bniV\vNORMAL\6\19\fS-BLOCK\bRvx\14V-REPLACE\6!\nSHELL\bno\22\14O-PENDING\bRvc\14V-REPLACE\bnoV\14O-PENDING\bnov\14O-PENDING\6v\vVISUAL\ace\14EX-NORMAL\aic\vI-COMP\6i\vINSERT\arm\tMORE\6V\vV-LINE\aRx\fREPLACE\6n\vNORMAL\6t\rTERMINAL\6\22\fV-BLOCK\6r\fREPLACE\aRv\14V-REPLACE\6s\vSELECT\ano\14O-PENDING\6c\fCOMMAND\aRc\fREPLACE\bniI\vNORMAL\6S\vS-LINE\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\1\0\v\vviolet\f#a9a1e1\ngreen\f#98be65\tcyan\f#008080\vyellow\f#ECBE7B\rdarkblue\f#081633\abg\f#202328\fmagenta\f#c678dd\tblue\f#51afef\vorange\f#FF8800\afg\f#bbc2cf\bred\f#ec5f67\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-dap-virtual-text
time([[Config for nvim-dap-virtual-text]], true)
try_loadstring("\27LJ\1\2V\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\15all_frames\2\nsetup\26nvim-dap-virtual-text\frequire\0", "config", "nvim-dap-virtual-text")
time([[Config for nvim-dap-virtual-text]], false)
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
try_loadstring('\27LJ\1\2E\0\0\2\1\4\0\b+\0\0\0007\0\0\0004\1\1\0007\1\2\0017\1\3\1>\1\1\0=\0\0\1G\0\1\0\1À\nbufnr\afn\bvim\19toggle_preview»\1\0\1\5\1\n\0\0173\1\1\0+\2\0\0007\2\0\2:\2\2\1+\2\0\0007\2\3\2:\2\4\0014\2\5\0%\3\6\0>\2\2\0027\2\a\0027\2\b\0027\2\t\2\16\3\0\0\16\4\1\0>\2\3\1G\0\1\0\0À\14_hop_loop\bhop\15extensions\14telescope\frequire\18loop_callback\28send_selected_to_qflist\rcallback\1\0\0\21toggle_selectionE\0\0\2\1\4\0\b+\0\0\0007\0\0\0004\1\1\0007\1\2\0017\1\3\1>\1\1\0=\0\0\1G\0\1\0\1À\nbufnr\afn\bvim\19toggle_preview»\1\0\1\5\1\n\0\0173\1\1\0+\2\0\0007\2\0\2:\2\2\1+\2\0\0007\2\3\2:\2\4\0014\2\5\0%\3\6\0>\2\2\0027\2\a\0027\2\b\0027\2\t\2\16\3\0\0\16\4\1\0>\2\3\1G\0\1\0\0À\14_hop_loop\bhop\15extensions\14telescope\frequire\18loop_callback\28send_selected_to_qflist\rcallback\1\0\0\21toggle_selection€\6\1\0\n\0$\0S4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0024\2\0\0%\3\3\0>\2\2\0024\3\0\0%\4\4\0>\3\2\0027\3\5\0033\4\25\0003\5\23\0003\6\17\0003\a\a\0007\b\6\2:\b\b\a1\b\t\0:\b\n\a4\b\v\0%\t\4\0>\b\2\0027\b\f\b7\b\r\b7\b\r\b:\b\14\a1\b\15\0:\b\16\a:\a\18\0063\a\19\0007\b\6\2:\b\b\a1\b\20\0:\b\n\a4\b\v\0%\t\4\0>\b\2\0027\b\f\b7\b\r\b7\b\r\b:\b\14\a1\b\21\0:\b\16\a:\a\22\6:\6\24\5:\5\26\0043\5\28\0003\6\27\0:\6\29\0053\6\30\0:\6\r\0053\6\31\0:\6 \5:\5\f\4>\3\2\0014\3\0\0%\4\4\0>\3\2\0027\3!\3%\4"\0>\3\2\0014\3\0\0%\4\4\0>\3\2\0027\3!\3%\4#\0>\3\2\0014\3\0\0%\4\4\0>\3\2\0027\3!\3%\4\29\0>\3\2\0014\3\0\0%\4\4\0>\3\2\0027\3!\3%\4\r\0>\3\2\0010\0\0€G\0\1\0\rprojects\bdap\19load_extension\15fzf_writer\1\0\3\28minimum_grep_characters\3\2\20use_highlighter\2\29minimum_files_characters\3\2\1\0\2\16trace_entry\2\20reset_selection\2\bfzf\1\0\0\1\0\4\28override_generic_sorter\1\14case_mode\15smart_case\25override_file_sorter\2\nfuzzy\2\rdefaults\1\0\0\rmappings\1\0\0\6n\0\0\1\0\0\6i\1\0\0\14<C-space>\0\n<C-h>\bhop\15extensions\6R\n<C-i>\0\n<C-o>\1\0\0\22open_with_trouble\nsetup\14telescope trouble.providers.telescope\29telescope.actions.layout\22telescope.actions\frequire\0', "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\1\0023\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\ndapui\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: spellsitter.nvim
time([[Config for spellsitter.nvim]], true)
try_loadstring("\27LJ\1\2e\0\0\3\0\5\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0002\2\0\0:\2\4\1>\0\2\1G\0\1\0\rcaptures\1\0\2\ahl\rSpellBad\venable\2\nsetup\16spellsitter\frequire\0", "config", "spellsitter.nvim")
time([[Config for spellsitter.nvim]], false)
-- Config for: lspkind-nvim
time([[Config for lspkind-nvim]], true)
try_loadstring("\27LJ\1\2U\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\2\vpreset\fdefault\14with_text\2\tinit\flspkind\frequire\0", "config", "lspkind-nvim")
time([[Config for lspkind-nvim]], false)
-- Config for: kommentary
time([[Config for kommentary]], true)
try_loadstring("\27LJ\1\2^\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireè\1\1\0\4\0\b\0\0154\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\0\3\0%\1\4\0003\2\5\0001\3\6\0:\3\a\2>\0\3\1G\0\1\0\18hook_function\0\1\0\2\31multi_line_comment_strings\tauto\31single_line_comment_string\tauto\20typescriptreact\23configure_language\26use_extended_mappings\22kommentary.config\frequire\0", "config", "kommentary")
time([[Config for kommentary]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\1\2â\a\0\0\4\0\f\0\0154\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\0013\2\6\0003\3\a\0:\3\b\0023\3\t\0:\3\n\2:\2\v\1>\0\2\1G\0\1\0\fkeymaps\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\1\0\v\17n <leader>gb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17v <leader>gsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>gp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17v <leader>grT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\fnoremap\2\17n <leader>gs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\28current_line_blame_opts\1\0\1\ndelay\3ô\3\1\0\1\23current_line_blame\2\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\1\2;\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\1\0021\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\blsp\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: nvim-toggleterm.lua
time([[Config for nvim-toggleterm.lua]], true)
try_loadstring("\27LJ\1\2Î\1\0\0\3\0\a\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0004\2\4\0007\2\5\0027\2\6\2:\2\6\1>\0\2\1G\0\1\0\nshell\6o\bvim\1\0\b\20shade_terminals\1\20insert_mappings\1\tsize\3\15\17persist_size\2\20start_in_insert\2\14direction\btab\18close_on_exit\2\17hide_numbers\1\nsetup\15toggleterm\frequire\0", "config", "nvim-toggleterm.lua")
time([[Config for nvim-toggleterm.lua]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\1\2Ë\1\0\0\3\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0013\2\6\0:\2\a\1>\0\2\1G\0\1\0\rpatterns\1\b\0\0\t.git\v_darcs\b.hg\t.bzr\t.svn\rMakefile\17package.json\22detection_methods\1\0\2\16show_hidden\2\17silent_chdir\1\1\3\0\0\blsp\fpattern\nsetup\17project_nvim\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\1\2¶\1\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\17handler_opts\1\0\5\15toggle_key\n<M-s>\20floating_window\1\16hint_prefix\tîž› \16hint_enable\2\19always_trigger\1\1\0\1\vborder\tnone\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
