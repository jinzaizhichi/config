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
local package_path_str = "/home/hewenjin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/hewenjin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/hewenjin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/hewenjin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/hewenjin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    config = { "\27LJ\2\nu\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15file_panel\1\0\1\nwidth\3#\1\0\2\14use_icons\2\18diff_binaries\1\nsetup\rdiffview\frequire\0" },
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
    config = { "\27LJ\2\nä\1\0\0\5\0\6\0\n5\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0B\2\2\2>\2\2\1=\1\5\0L\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\4\0\0\21--stdin-filepath\0\19--single-quote\1\0\2\bexe\rprettier\nstdin\2D\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\2\0\0\18--emit=stdout\1\0\2\bexe\frustfmt\nstdin\2J\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\19--indent-width\3\2\1\0\2\bexe\15lua-format\nstdin\2¢\1\1\0\6\0\f\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0004\4\3\0003\5\4\0>\5\1\4=\4\6\0034\4\3\0003\5\a\0>\5\1\4=\4\b\0034\4\3\0003\5\t\0>\5\1\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\rfiletype\blua\0\trust\0\15javascript\1\0\0\0\1\0\1\flogging\1\nsetup\14formatter\frequire\0" },
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
    config = { "\27LJ\2\n‚\a\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0=\4\b\0035\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\fkeymaps\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\1\0\v\17v <leader>gsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17n <leader>gs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>gb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\fnoremap\2\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17v <leader>grT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\28current_line_blame_opts\1\0\1\ndelay\3Ù\3\1\0\1\23current_line_blame\2\nsetup\rgitsigns\frequire\0" },
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
    config = { "\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/hop",
    url = "https://github.com/phaazon/hop.nvim"
  },
  kommentary = {
    config = { "\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireË\1\1\0\5\0\b\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0'\2\4\0005\3\5\0003\4\6\0=\4\a\3B\0\3\1K\0\1\0\18hook_function\0\1\0\2\31multi_line_comment_strings\tauto\31single_line_comment_string\tauto\20typescriptreact\23configure_language\26use_extended_mappings\22kommentary.config\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/kommentary",
    url = "https://github.com/b3nj5m1n/kommentary"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n\\\0\0\5\0\5\1\0156\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvimñ\1\0\0\6\0\a\0\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\3\5\0\18\4\0\0'\5\6\0&\4\5\4B\1\3\2\r\2\1\0X\2\vÄ\21\2\1\0)\3\0\0\1\3\2\0X\2\4Ä\21\2\1\0\21\3\0\0\0\2\3\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvim:\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0B\0\1\0029\0\3\0L\0\2\0\tmode\18nvim_get_mode\bapi\bvim0\0\0\3\2\1\0\t-\0\0\0B\0\1\2-\1\1\0008\1\0\1\14\0\1\0X\2\2Ä'\2\0\0L\2\2\0L\1\2\0\4¿\3¿\5I\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_x\rsections\vinsert\ntableR\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_c\22inactive_sections\vinsert\ntableR\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_x\22inactive_sections\vinsert\ntable\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b‚ñäÃ\5\0\0\a\0023\0z5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\3\1=\1\5\0-\1\0\0009\1\3\1=\1\6\0-\1\0\0009\1\3\1=\1\a\0-\1\0\0009\1\0\1=\1\b\0-\1\0\0009\1\0\1=\1\t\0-\1\0\0009\1\0\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\f\1=\1\16\0-\1\0\0009\1\f\1=\1\17\0-\1\0\0009\1\f\1=\1\18\0-\1\0\0009\1\19\1=\1\20\0-\1\0\0009\1\19\1=\1\21\0-\1\0\0009\1\19\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0-\1\0\0009\1\0\1=\1\28\0-\1\0\0009\1\0\1=\1\29\0-\1\0\0009\1\0\1=\1\30\0-\1\0\0009\1\0\1=\1\31\0-\1\0\0009\1\0\1=\1 \0-\1\0\0009\1!\1=\1\"\0-\1\0\0009\1!\1=\1#\0-\1\0\0009\1\0\1=\1$\0-\1\0\0009\1%\1=\1&\0-\1\0\0009\1%\1=\1'\0-\1\0\0009\1%\1=\1(\0-\1\0\0009\1\3\1=\1)\0-\1\0\0009\1\3\1=\1*\0006\1+\0009\1,\0019\1-\1'\3.\0006\4+\0009\4/\0049\0040\4B\4\1\0028\4\4\0'\0051\0-\6\0\0009\0062\6&\3\6\3B\1\2\1-\1\1\0D\1\1\0\1¿\5¿\abg\f guibg=\tmode\afn$hi! LualineMode gui=bold guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\6c\fmagenta\bRvx\bRvc\aRv\aRx\aRc\6R\aix\aic\6i\ngreen\6\19\6S\6s\vorange\a\22s\6\22\aVs\6V\avs\6v\tblue\ant\bniV\bniR\bniI\bno\22\bnoV\bnov\ano\bred\6n\1\0\0\vviolet\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=≥\3\0\0\14\0\21\2B'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\0026\2\1\0009\2\5\0029\2\6\2B\2\1\0026\3\a\0\18\5\2\0B\3\2\2\v\3\0\0X\3\1ÄL\0\2\0'\3\b\0006\4\t\0\18\6\2\0B\4\2\4X\a\24Ä9\t\n\b9\t\v\t\15\0\t\0X\n\20Ä6\n\1\0009\n\f\n9\n\r\n\18\f\t\0\18\r\1\0B\n\3\2\b\n\0\0X\n\fÄ9\n\14\b6\v\1\0009\v\f\v9\v\15\vB\v\1\0028\n\v\n\n\n\0\0X\n\4Ä\18\n\3\0009\v\16\b'\f\17\0&\3\f\nE\a\3\3R\aÊ6\4\18\0009\4\19\4\18\6\3\0B\4\2\2)\5\0\0\1\5\4\0X\4\nÄ6\4\18\0009\4\20\4\18\6\3\0)\a\1\0006\b\18\0009\b\19\b\18\n\3\0B\b\2\2\23\b\1\bD\4\4\0L\0\2\0\bsub\blen\vstring\6 \tname\nbufnr\21attached_buffers\nindex\afn\14filetypes\vconfig\vipairs\5\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\18No Active Lsp˛ˇˇˇ\31\2\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b‚ñäÖ\19\1\0\17\0p\0Â\0016\0\0\0'\2\1\0B\0\2\0025\1\2\0005\2\4\0003\3\3\0=\3\5\0023\3\6\0=\3\a\0023\3\b\0=\3\t\0025\3\n\0003\4\v\0003\5\f\0005\6\25\0005\a\r\0005\b\19\0005\t\17\0005\n\15\0009\v\14\1=\v\14\n9\v\16\1=\v\16\n=\n\18\t=\t\20\b5\t\22\0005\n\21\0009\v\14\1=\v\14\n9\v\16\1=\v\16\n=\n\18\t=\t\23\b=\b\24\a=\a\26\0065\a\27\0004\b\0\0=\b\28\a4\b\0\0=\b\29\a4\b\0\0=\b\30\a4\b\0\0=\b\31\a4\b\0\0=\b \a4\b\0\0=\b!\a=\a\"\0065\a#\0004\b\0\0=\b\28\a4\b\0\0=\b$\a4\b\0\0=\b\30\a4\b\0\0=\b\31\a4\b\0\0=\b \a4\b\0\0=\b!\a=\a%\0063\a&\0003\b'\0003\t(\0003\n)\0\18\v\a\0005\r-\0003\14*\0>\14\1\r5\14,\0009\15+\1=\15\14\14=\14.\r5\14/\0=\0140\rB\v\2\1\18\v\a\0005\r2\0003\0141\0>\14\1\r5\0143\0=\0140\rB\v\2\1\18\v\a\0005\r4\0009\14\5\2=\0145\rB\v\2\1\18\v\a\0005\r6\0009\14\5\2=\0145\r5\0148\0009\0157\1=\15\14\14=\14.\rB\v\2\1\18\v\a\0005\r9\0005\14;\0009\15:\1=\15\14\14=\14.\rB\v\2\1\18\v\a\0005\r<\0005\14=\0=\14>\r5\14A\0005\15@\0009\16?\1=\16\14\15=\15B\0145\15D\0009\16C\1=\16\14\15=\15E\0145\15G\0009\16F\1=\16\14\15=\15H\14=\14I\r9\14\a\2=\0145\rB\v\2\1\18\v\a\0004\r\3\0003\14J\0>\14\1\rB\v\2\1\18\v\a\0005\rL\0003\14K\0>\14\1\r5\14N\0009\15M\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\rO\0005\14P\0=\14Q\r5\14R\0=\14>\r5\14T\0005\15S\0009\16F\1=\16\14\15=\15U\0145\15W\0009\16V\1=\16\14\15=\15X\0145\15Y\0009\16M\1=\16\14\15=\15Z\14=\14[\rB\v\2\1\18\v\b\0005\r\\\0006\14]\0009\14^\14=\14_\r9\14\a\2=\0145\r5\14`\0009\15?\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\ra\0006\14]\0009\14^\14=\14_\r5\14b\0009\15?\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\rc\0B\v\2\1\18\v\b\0005\rd\0005\14e\0009\15\14\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\rh\0003\14f\0>\14\1\r5\14g\0009\15+\1=\15\14\14=\14.\r5\14i\0=\0140\rB\v\2\1\18\v\t\0005\rj\0009\14\5\2=\0145\r5\14k\0009\0157\1=\15\14\14=\14.\rB\v\2\1\18\v\n\0005\rl\0B\v\2\1\18\v\n\0005\rm\0005\14n\0009\15\14\1=\15\14\14=\14.\rB\v\2\0019\vo\0\18\r\6\0B\v\2\0012\0\0ÄK\0\1\0\nsetup\1\0\1\bgui\tbold\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\1\bgui\tbold\1\2\0\0\rfilename\1\0\2\tleft\3\1\nright\3\0\1\0\0\1\0\0\0\1\0\1\bgui\tbold\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\1\bgui\tbold\1\2\1\0\15fileformat\18icons_enabled\1\1\0\1\bgui\tbold\bfmt\nupper\vstring\1\2\0\0\15o:encoding\22diagnostics_color\15color_info\1\0\0\15color_warn\1\0\0\vyellow\16color_error\1\0\0\1\0\0\1\0\3\twarn\tÔÅ± \tinfo\tÔÅ™ \nerror\tÔÅó \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\1\bgui\tbold\tcyan\1\0\1\ticon\rÔÇÖ LSP:\0\0\15diff_color\fremoved\1\0\0\bred\rmodified\1\0\0\vorange\nadded\1\0\0\1\0\0\ngreen\fsymbols\1\0\3\rmodified\tÔßâ \nadded\tÔÉæ \fremoved\tÔÖÜ \1\2\0\0\tdiff\1\0\1\bgui\tbold\vviolet\1\2\1\0\vbranch\ticon\bÔëø\1\0\1\bgui\tbold\fmagenta\1\2\0\0\rfilename\tcond\1\2\0\0\rfilesize\1\0\1\nright\3\1\1\0\1\ncolor\16LualineMode\0\fpadding\1\0\2\tleft\3\0\nright\3\1\ncolor\1\0\0\1\0\0\tblue\0\0\0\0\0\22inactive_sections\14lualine_v\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\1\0\0\afg\1\0\2\23section_separators\5\25component_separators\5\0\0\1\0#\avs\vVISUAL\6n\vNORMAL\ant\vNORMAL\6s\vSELECT\bniR\vNORMAL\bniI\vNORMAL\bno\22\14O-PENDING\bnoV\14O-PENDING\bnov\14O-PENDING\6R\fREPLACE\ano\14O-PENDING\6v\vVISUAL\bniV\vNORMAL\aic\vI-COMP\6i\vINSERT\6r\fREPLACE\6!\nSHELL\ar?\fCONFIRM\arm\tMORE\ace\14EX-NORMAL\acv\15EX-COMMAND\bRvx\14V-REPLACE\bRvc\14V-REPLACE\6\22\fV-BLOCK\aRv\14V-REPLACE\aRx\fREPLACE\aRc\fREPLACE\6c\fCOMMAND\aix\vI-COMP\6t\rTERMINAL\6\19\fS-BLOCK\6S\vS-LINE\a\22s\fV-BLOCK\aVs\vV-LINE\6V\vV-LINE\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\1\0\v\vorange\f#FF8800\tblue\f#51afef\ngreen\f#98be65\rdarkblue\f#081633\abg\f#202328\tcyan\f#008080\vyellow\f#ECBE7B\bred\f#ec5f67\afg\f#bbc2cf\fmagenta\f#c678dd\vviolet\f#a9a1e1\flualine\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n}\0\4\14\0\a\0\21'\4\0\0006\5\1\0\18\a\2\0B\5\2\4H\b\rÄ\a\b\2\0X\n\2Ä'\n\3\0X\v\5Ä\a\b\4\0X\n\2Ä'\n\5\0X\v\1Ä'\n\6\0\18\v\4\0\18\f\n\0\18\r\t\0&\4\r\vF\b\3\3R\bÒL\4\2\0\bÔÅ™\bÔÅ±\fwarning\bÔÅó\nerror\npairs\6 ø\2\1\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0003\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\3=\3\r\2B\0\2\1K\0\1\0\15highlights\23indicator_selected\1\0\2\nguifg\f#51afef\nguibg\f#282c34\tfill\1\0\0\1\0\2\nguifg\f#282c34\nguibg\f#202328\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\20show_close_icon\1\28show_buffer_close_icons\1\16diagnostics\rnvim_lsp\22show_buffer_icons\2\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\np\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÂ\1\0\1\5\3\b\1 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\22Ä6\1\2\0009\1\3\0019\1\4\1)\3\1\0B\1\2\2\t\1\0\0X\1\5Ä-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\a\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\2¿\3¿\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2®\1\0\0\4\2\a\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\vÄ6\0\2\0009\0\3\0009\0\4\0)\2ˇˇB\0\2\2\t\0\0\0X\0\4Ä-\0\1\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\0¿\2¿\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2ó\3\0\2\a\1\15\0!6\2\0\0009\2\1\0029\4\2\1B\2\2\2-\3\0\0\1\3\2\0X\2\tÄ6\2\0\0009\2\3\0029\4\2\1)\5\1\0-\6\0\0B\2\4\2'\3\4\0&\2\3\2=\2\2\0016\2\6\0'\4\a\0B\2\2\0029\2\b\0029\2\t\0029\3\5\0018\2\3\2'\3\n\0009\4\5\1&\2\4\2=\2\5\0015\2\f\0009\3\r\0009\3\14\0038\2\3\2=\2\v\1L\1\2\0\1¿\tname\vsource\1\0\n\15treesitter\17[Treesitter]\nvsnip\f[VSnip]\rnvim_lsp\n[LSP]\26vim-dadbod-completion\r[Dadbod]\vbuffer\r[Buffer]\18latex_symbols\f[Latex]\rnvim_lua\n[Lua]\tpath\v[Path]\16cmp_tabnine\14[Tabnine]\tlook\v[Look]\tmenu\6 \fdefault\fpresets\flspkind\frequire\tkind\bÔõó\bsub\tabbr\blen\vstring·\v\1\0\15\0W\1´\0016\0\0\0'\2\1\0B\0\2\2)\0012\0003\2\2\0003\3\3\0009\4\4\0005\6\6\0005\a\5\0=\a\a\0065\a\t\0003\b\b\0=\b\n\a=\a\v\0065\a\19\0009\b\f\0009\n\f\0009\n\r\n5\f\16\0009\r\14\0009\r\15\r=\r\17\fB\n\2\0025\v\18\0B\b\3\2=\b\20\a9\b\f\0009\n\f\0009\n\21\n5\f\22\0009\r\14\0009\r\15\r=\r\17\fB\n\2\0025\v\23\0B\b\3\2=\b\24\a9\b\f\0009\n\f\0009\n\25\n)\f¸ˇB\n\2\0025\v\26\0B\b\3\2=\b\27\a9\b\f\0009\n\f\0009\n\25\n)\f\4\0B\n\2\0025\v\28\0B\b\3\2=\b\29\a9\b\f\0009\n\f\0009\n\30\nB\n\1\0025\v\31\0B\b\3\2=\b \a9\b!\0009\b\"\b=\b#\a9\b\f\0005\n%\0009\v\f\0009\v$\vB\v\1\2=\v&\n9\v\f\0009\v'\vB\v\1\2=\v(\nB\b\2\2=\b)\a9\b\f\0005\n.\0009\v\f\0009\v*\v5\r-\0009\14+\0009\14,\14=\14\17\rB\v\2\2=\v&\n9\v\f\0009\v*\v5\r/\0B\v\2\2=\v(\nB\b\2\2=\b0\a9\b\f\0003\n1\0005\v2\0B\b\3\2=\b3\a9\b\f\0003\n4\0005\v5\0B\b\3\2=\b6\a=\a\f\0064\a\a\0005\b7\0>\b\1\a5\b8\0>\b\2\a5\b9\0>\b\3\a5\b:\0>\b\4\a5\b;\0005\t<\0=\t=\b>\b\5\a5\b>\0>\b\6\a=\a?\0065\a@\0003\bA\0=\bB\a=\aC\6B\4\2\0016\4\0\0'\6D\0B\4\2\0029\5E\0\18\a\5\0009\5F\5'\bG\0009\tH\0045\vJ\0005\fI\0=\fK\vB\t\2\0A\5\2\0019\5L\0049\6L\4\21\6\6\0\22\6\0\6'\aM\0<\a\6\0059\5\4\0009\5N\5'\aO\0005\bQ\0005\tP\0=\t\a\b9\t!\0009\t?\t4\v\3\0005\fR\0>\f\1\v4\f\3\0005\rS\0>\r\1\fB\t\3\2=\t?\bB\5\3\0019\5\4\0009\5N\5'\aT\0005\bV\0004\t\3\0005\nU\0>\n\1\t=\t?\bB\5\3\0012\0\0ÄK\0\1\0\1\0\0\1\0\1\tname\vbuffer\6/\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\1\0\1\17autocomplete\1\6:\fcmdline\vracket\tlisp\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\15formatting\vformat\0\1\0\1\15deprecated\2\fsources\1\0\1\tname\26vim-dadbod-completion\foptiona\1\0\2\17convert_case\2\tloud\2\1\0\3\19max_item_count\3\5\tname\tlook\19keyword_length\3\2\1\0\1\tname\tpath\1\0\2\tname\vbuffer\19max_item_count\3\n\1\0\1\tname\rnvim_lsp\1\0\1\tname\nvsnip\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\1\0\0\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-p>\1\3\0\0\6i\6c\1\0\0\21select_prev_item\n<C-n>\1\0\0\1\3\0\0\6i\6c\rbehavior\1\0\0\vSelect\19SelectBehavior\21select_next_item\fmapping\fsnippet\vexpand\1\0\0\0\15completion\1\0\0\1\0\1\16completeopt\26menu,menuone,noinsert\nsetup\0\0\bcmp\frequire\2\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-virtual-text"] = {
    config = { "\27LJ\2\nV\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\15all_frames\2\nsetup\26nvim-dap-virtual-text\frequire\0" },
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
    config = { "\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\blsp\frequire\0" },
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
    config = { "\27LJ\2\n–\1\0\0\4\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3=\3\6\2B\0\2\1K\0\1\0\nshell\6o\bvim\1\0\b\20start_in_insert\2\20shade_terminals\1\17hide_numbers\1\tsize\3\15\18close_on_exit\2\14direction\nfloat\17persist_size\2\20insert_mappings\1\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua",
    url = "https://github.com/akinsho/nvim-toggleterm.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÉ\a\0\0\6\0&\0-6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0024\3\0\0=\3\b\0025\3\t\0004\4\0\0=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\19\0005\4\18\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0005\5\24\0=\5\25\4=\4\26\0035\4\27\0005\5\28\0=\5\25\4=\4\29\3=\3\30\0025\3\31\0=\3 \0025\3#\0005\4!\0005\5\"\0=\5\25\4=\4$\3=\3%\2B\0\2\1K\0\1\0\16textobjects\vselect\1\0\0\1\0\4\aac\17@class.outer\aaf\20@function.outer\aif\20@function.inner\aic\17@class.inner\1\0\2\venable\2\14lookahead\2\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\rrefactor\15navigation\1\0\5\24goto_previous_usage\n<a-#>\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\21list_definitions\bgnD\20goto_definition\bgnd\1\0\1\venable\2\17smart_rename\fkeymaps\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\frainbow\1\0\2\venable\2\18extended_mode\2\fmatchip\1\0\1\venable\2\14autopairs\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\19ignore_install\fautotag\1\0\1\21ensure_installed\ball\14filetypes\1\b\0\0\thtml\15javascript\20javascriptreact\20typescriptreact\vsvelte\bvue\bxml\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    config = { "\27LJ\2\n£\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\2B\0\2\1K\0\1\0\rpatterns\fdefault\1\0\0\1\4\0\0\nclass\rfunction\vmethod\1\0\3\14max_lines\3\1\rthrottle\2\venable\2\nsetup\23treesitter-context\frequire\0" },
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
    config = { "\27LJ\2\nâ\3\0\0\4\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0024\3\0\0=\3\b\0024\3\0\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\16diagnostics\1\0\3\15background\2\vdarker\2\14undercurl\2\15highlights\vcolors\15code_style\1\0\5\14functions\tnone\rcomments\vitalic\rkeywords\tnone\14variables\tnone\fstrings\tnone\22toggle_style_list\1\b\0\0\tdark\vdarker\tcool\tdeep\twarm\vwarmer\nlight\1\0\5\nstyle\tdark\21toggle_style_key\15<leader>ts\18ending_tildes\1\16term_colors\1\16transparent\1\nsetup\fonedark\frequire\0" },
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
    config = { "\27LJ\2\nÀ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\rpatterns\1\b\0\0\t.git\v_darcs\b.hg\t.bzr\t.svn\rMakefile\17package.json\22detection_methods\1\0\2\17silent_chdir\1\16show_hidden\2\1\3\0\0\blsp\fpattern\nsetup\17project_nvim\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["rest.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14rest-nvim\frequire\0" },
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
    config = { "\27LJ\2\ne\0\0\4\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\2B\0\2\1K\0\1\0\rcaptures\1\0\2\ahl\rSpellBad\venable\2\nsetup\16spellsitter\frequire\0" },
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
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nE\0\0\4\1\4\0\b-\0\0\0009\0\0\0006\2\1\0009\2\2\0029\2\3\2B\2\1\0A\0\0\1K\0\1\0\1¿\nbufnr\afn\bvim\19toggle_previewª\1\0\1\6\1\n\0\0175\1\1\0-\2\0\0009\2\0\2=\2\2\1-\2\0\0009\2\3\2=\2\4\0016\2\5\0'\4\6\0B\2\2\0029\2\a\0029\2\b\0029\2\t\2\18\4\0\0\18\5\1\0B\2\3\1K\0\1\0\0¿\14_hop_loop\bhop\15extensions\14telescope\frequire\18loop_callback\28send_selected_to_qflist\rcallback\1\0\0\21toggle_selectionE\0\0\4\1\4\0\b-\0\0\0009\0\0\0006\2\1\0009\2\2\0029\2\3\2B\2\1\0A\0\0\1K\0\1\0\1¿\nbufnr\afn\bvim\19toggle_previewª\1\0\1\6\1\n\0\0175\1\1\0-\2\0\0009\2\0\2=\2\2\1-\2\0\0009\2\3\2=\2\4\0016\2\5\0'\4\6\0B\2\2\0029\2\a\0029\2\b\0029\2\t\2\18\4\0\0\18\5\1\0B\2\3\1K\0\1\0\0¿\14_hop_loop\bhop\15extensions\14telescope\frequire\18loop_callback\28send_selected_to_qflist\rcallback\1\0\0\21toggle_selection™\6\1\0\f\0%\0[6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0029\3\5\0035\5\25\0005\6\23\0005\a\17\0005\b\a\0009\t\6\2=\t\b\b3\t\t\0=\t\n\b6\t\v\0'\v\4\0B\t\2\0029\t\f\t9\t\r\t9\t\r\t=\t\14\b3\t\15\0=\t\16\b=\b\18\a5\b\19\0009\t\6\2=\t\b\b3\t\20\0=\t\n\b6\t\v\0'\v\4\0B\t\2\0029\t\f\t9\t\r\t9\t\r\t=\t\14\b3\t\21\0=\t\16\b=\b\22\a=\a\24\6=\6\26\0055\6\28\0005\a\27\0=\a\29\0065\a\30\0=\a\r\0065\a\31\0=\a \0064\a\0\0=\a!\6=\6\f\5B\3\2\0016\3\0\0'\5\4\0B\3\2\0029\3\"\3'\5#\0B\3\2\0016\3\0\0'\5\4\0B\3\2\0029\3\"\3'\5$\0B\3\2\0016\3\0\0'\5\4\0B\3\2\0029\3\"\3'\5\29\0B\3\2\0016\3\0\0'\5\4\0B\3\2\0029\3\"\3'\5\r\0B\3\2\0016\3\0\0'\5\4\0B\3\2\0029\3\"\3'\5!\0B\3\2\0012\0\0ÄK\0\1\0\rprojects\bdap\19load_extension\14ui-select\15fzf_writer\1\0\3\28minimum_grep_characters\3\2\20use_highlighter\2\29minimum_files_characters\3\2\1\0\2\20reset_selection\2\16trace_entry\2\bfzf\1\0\0\1\0\4\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\1\rdefaults\1\0\0\rmappings\1\0\0\6n\0\0\1\0\0\6i\1\0\0\14<C-space>\0\n<C-h>\bhop\15extensions\6R\n<C-i>\0\n<C-o>\1\0\0\22open_with_trouble\nsetup\14telescope trouble.providers.telescope\29telescope.actions.layout\22telescope.actions\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\0" },
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
    config = { "\27LJ\2\nï\a\0\0\6\0.\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\1\3\0005\3\21\0005\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\0045\5\v\0=\5\f\0045\5\r\0=\5\14\0045\5\15\0=\5\16\0045\5\17\0=\5\18\0045\5\19\0=\5\20\4=\4\22\0035\4\23\0=\4\24\0035\4\25\0005\5\26\0=\5\27\4=\4\28\0035\4\29\0=\4\20\0035\4\30\0=\4\31\0035\4 \0=\4!\0035\4\"\0=\4\b\0035\4#\0=\4$\0035\4%\0=\4&\0035\4'\0=\4\18\0035\4(\0=\4\f\0035\4)\0=\4\14\0035\4*\0=\4+\0035\4,\0=\4\16\0035\4-\0B\1\3\1K\0\1\0\1\0\1\vprefix\r<leader>\1\0\1\tname\15Git Action\6p\1\0\1\tname\27Paste System Clipboard\1\0\1\tname\14Workspace\1\0\1\tname\14Translate\1\0\1\tname\29Session & Spectre Action\6r\1\0\1\tname\27Ranger & Rename & Rest\6o\1\0\1\tname\29Operate Dashboard Action\1\0\1\tname\22Markdown & Format\6l\1\0\1\tname\20List Of Trouble\6x\1\0\1\tname\25Close Current Buffer\1\0\1\tname\15DAP Action\6c\6j\1\0\1\tname\21Java Code Action\1\0\1\tname\16Code Action\6b\1\0\1\tname\19Buffer Operate\6f\1\0\0\6d\1\0\1\tname\25DAP Telescope Action\6s\1\0\1\tname\fSpectre\6g\1\0\1\tname\15Git Action\6w\1\0\1\tname\27Workspace & LSP Action\6t\1\0\1\tname\27TreeSitter & FileTypes\6h\1\0\1\tname\31History & Help & Highlight\6m\1\0\1\tname\tMark\6i\1\0\1\tname\23Buildin & Reloader\1\0\1\tname\31Find By Telescope & Format\rregister\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\blsp\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n\\\0\0\5\0\5\1\0156\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvimñ\1\0\0\6\0\a\0\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\3\5\0\18\4\0\0'\5\6\0&\4\5\4B\1\3\2\r\2\1\0X\2\vÄ\21\2\1\0)\3\0\0\1\3\2\0X\2\4Ä\21\2\1\0\21\3\0\0\0\2\3\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvim:\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0B\0\1\0029\0\3\0L\0\2\0\tmode\18nvim_get_mode\bapi\bvim0\0\0\3\2\1\0\t-\0\0\0B\0\1\2-\1\1\0008\1\0\1\14\0\1\0X\2\2Ä'\2\0\0L\2\2\0L\1\2\0\4¿\3¿\5I\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_x\rsections\vinsert\ntableR\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_c\22inactive_sections\vinsert\ntableR\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_x\22inactive_sections\vinsert\ntable\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b‚ñäÃ\5\0\0\a\0023\0z5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\3\1=\1\5\0-\1\0\0009\1\3\1=\1\6\0-\1\0\0009\1\3\1=\1\a\0-\1\0\0009\1\0\1=\1\b\0-\1\0\0009\1\0\1=\1\t\0-\1\0\0009\1\0\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\f\1=\1\16\0-\1\0\0009\1\f\1=\1\17\0-\1\0\0009\1\f\1=\1\18\0-\1\0\0009\1\19\1=\1\20\0-\1\0\0009\1\19\1=\1\21\0-\1\0\0009\1\19\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0-\1\0\0009\1\0\1=\1\28\0-\1\0\0009\1\0\1=\1\29\0-\1\0\0009\1\0\1=\1\30\0-\1\0\0009\1\0\1=\1\31\0-\1\0\0009\1\0\1=\1 \0-\1\0\0009\1!\1=\1\"\0-\1\0\0009\1!\1=\1#\0-\1\0\0009\1\0\1=\1$\0-\1\0\0009\1%\1=\1&\0-\1\0\0009\1%\1=\1'\0-\1\0\0009\1%\1=\1(\0-\1\0\0009\1\3\1=\1)\0-\1\0\0009\1\3\1=\1*\0006\1+\0009\1,\0019\1-\1'\3.\0006\4+\0009\4/\0049\0040\4B\4\1\0028\4\4\0'\0051\0-\6\0\0009\0062\6&\3\6\3B\1\2\1-\1\1\0D\1\1\0\1¿\5¿\abg\f guibg=\tmode\afn$hi! LualineMode gui=bold guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\6c\fmagenta\bRvx\bRvc\aRv\aRx\aRc\6R\aix\aic\6i\ngreen\6\19\6S\6s\vorange\a\22s\6\22\aVs\6V\avs\6v\tblue\ant\bniV\bniR\bniI\bno\22\bnoV\bnov\ano\bred\6n\1\0\0\vviolet\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=≥\3\0\0\14\0\21\2B'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\0026\2\1\0009\2\5\0029\2\6\2B\2\1\0026\3\a\0\18\5\2\0B\3\2\2\v\3\0\0X\3\1ÄL\0\2\0'\3\b\0006\4\t\0\18\6\2\0B\4\2\4X\a\24Ä9\t\n\b9\t\v\t\15\0\t\0X\n\20Ä6\n\1\0009\n\f\n9\n\r\n\18\f\t\0\18\r\1\0B\n\3\2\b\n\0\0X\n\fÄ9\n\14\b6\v\1\0009\v\f\v9\v\15\vB\v\1\0028\n\v\n\n\n\0\0X\n\4Ä\18\n\3\0009\v\16\b'\f\17\0&\3\f\nE\a\3\3R\aÊ6\4\18\0009\4\19\4\18\6\3\0B\4\2\2)\5\0\0\1\5\4\0X\4\nÄ6\4\18\0009\4\20\4\18\6\3\0)\a\1\0006\b\18\0009\b\19\b\18\n\3\0B\b\2\2\23\b\1\bD\4\4\0L\0\2\0\bsub\blen\vstring\6 \tname\nbufnr\21attached_buffers\nindex\afn\14filetypes\vconfig\vipairs\5\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\18No Active Lsp˛ˇˇˇ\31\2\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b‚ñäÖ\19\1\0\17\0p\0Â\0016\0\0\0'\2\1\0B\0\2\0025\1\2\0005\2\4\0003\3\3\0=\3\5\0023\3\6\0=\3\a\0023\3\b\0=\3\t\0025\3\n\0003\4\v\0003\5\f\0005\6\25\0005\a\r\0005\b\19\0005\t\17\0005\n\15\0009\v\14\1=\v\14\n9\v\16\1=\v\16\n=\n\18\t=\t\20\b5\t\22\0005\n\21\0009\v\14\1=\v\14\n9\v\16\1=\v\16\n=\n\18\t=\t\23\b=\b\24\a=\a\26\0065\a\27\0004\b\0\0=\b\28\a4\b\0\0=\b\29\a4\b\0\0=\b\30\a4\b\0\0=\b\31\a4\b\0\0=\b \a4\b\0\0=\b!\a=\a\"\0065\a#\0004\b\0\0=\b\28\a4\b\0\0=\b$\a4\b\0\0=\b\30\a4\b\0\0=\b\31\a4\b\0\0=\b \a4\b\0\0=\b!\a=\a%\0063\a&\0003\b'\0003\t(\0003\n)\0\18\v\a\0005\r-\0003\14*\0>\14\1\r5\14,\0009\15+\1=\15\14\14=\14.\r5\14/\0=\0140\rB\v\2\1\18\v\a\0005\r2\0003\0141\0>\14\1\r5\0143\0=\0140\rB\v\2\1\18\v\a\0005\r4\0009\14\5\2=\0145\rB\v\2\1\18\v\a\0005\r6\0009\14\5\2=\0145\r5\0148\0009\0157\1=\15\14\14=\14.\rB\v\2\1\18\v\a\0005\r9\0005\14;\0009\15:\1=\15\14\14=\14.\rB\v\2\1\18\v\a\0005\r<\0005\14=\0=\14>\r5\14A\0005\15@\0009\16?\1=\16\14\15=\15B\0145\15D\0009\16C\1=\16\14\15=\15E\0145\15G\0009\16F\1=\16\14\15=\15H\14=\14I\r9\14\a\2=\0145\rB\v\2\1\18\v\a\0004\r\3\0003\14J\0>\14\1\rB\v\2\1\18\v\a\0005\rL\0003\14K\0>\14\1\r5\14N\0009\15M\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\rO\0005\14P\0=\14Q\r5\14R\0=\14>\r5\14T\0005\15S\0009\16F\1=\16\14\15=\15U\0145\15W\0009\16V\1=\16\14\15=\15X\0145\15Y\0009\16M\1=\16\14\15=\15Z\14=\14[\rB\v\2\1\18\v\b\0005\r\\\0006\14]\0009\14^\14=\14_\r9\14\a\2=\0145\r5\14`\0009\15?\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\ra\0006\14]\0009\14^\14=\14_\r5\14b\0009\15?\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\rc\0B\v\2\1\18\v\b\0005\rd\0005\14e\0009\15\14\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\rh\0003\14f\0>\14\1\r5\14g\0009\15+\1=\15\14\14=\14.\r5\14i\0=\0140\rB\v\2\1\18\v\t\0005\rj\0009\14\5\2=\0145\r5\14k\0009\0157\1=\15\14\14=\14.\rB\v\2\1\18\v\n\0005\rl\0B\v\2\1\18\v\n\0005\rm\0005\14n\0009\15\14\1=\15\14\14=\14.\rB\v\2\0019\vo\0\18\r\6\0B\v\2\0012\0\0ÄK\0\1\0\nsetup\1\0\1\bgui\tbold\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\1\bgui\tbold\1\2\0\0\rfilename\1\0\2\tleft\3\1\nright\3\0\1\0\0\1\0\0\0\1\0\1\bgui\tbold\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\1\bgui\tbold\1\2\1\0\15fileformat\18icons_enabled\1\1\0\1\bgui\tbold\bfmt\nupper\vstring\1\2\0\0\15o:encoding\22diagnostics_color\15color_info\1\0\0\15color_warn\1\0\0\vyellow\16color_error\1\0\0\1\0\0\1\0\3\twarn\tÔÅ± \tinfo\tÔÅ™ \nerror\tÔÅó \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\1\bgui\tbold\tcyan\1\0\1\ticon\rÔÇÖ LSP:\0\0\15diff_color\fremoved\1\0\0\bred\rmodified\1\0\0\vorange\nadded\1\0\0\1\0\0\ngreen\fsymbols\1\0\3\rmodified\tÔßâ \nadded\tÔÉæ \fremoved\tÔÖÜ \1\2\0\0\tdiff\1\0\1\bgui\tbold\vviolet\1\2\1\0\vbranch\ticon\bÔëø\1\0\1\bgui\tbold\fmagenta\1\2\0\0\rfilename\tcond\1\2\0\0\rfilesize\1\0\1\nright\3\1\1\0\1\ncolor\16LualineMode\0\fpadding\1\0\2\tleft\3\0\nright\3\1\ncolor\1\0\0\1\0\0\tblue\0\0\0\0\0\22inactive_sections\14lualine_v\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\1\0\0\afg\1\0\2\23section_separators\5\25component_separators\5\0\0\1\0#\avs\vVISUAL\6n\vNORMAL\ant\vNORMAL\6s\vSELECT\bniR\vNORMAL\bniI\vNORMAL\bno\22\14O-PENDING\bnoV\14O-PENDING\bnov\14O-PENDING\6R\fREPLACE\ano\14O-PENDING\6v\vVISUAL\bniV\vNORMAL\aic\vI-COMP\6i\vINSERT\6r\fREPLACE\6!\nSHELL\ar?\fCONFIRM\arm\tMORE\ace\14EX-NORMAL\acv\15EX-COMMAND\bRvx\14V-REPLACE\bRvc\14V-REPLACE\6\22\fV-BLOCK\aRv\14V-REPLACE\aRx\fREPLACE\aRc\fREPLACE\6c\fCOMMAND\aix\vI-COMP\6t\rTERMINAL\6\19\fS-BLOCK\6S\vS-LINE\a\22s\fV-BLOCK\aVs\vV-LINE\6V\vV-LINE\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\1\0\v\vorange\f#FF8800\tblue\f#51afef\ngreen\f#98be65\rdarkblue\f#081633\abg\f#202328\tcyan\f#008080\vyellow\f#ECBE7B\bred\f#ec5f67\afg\f#bbc2cf\fmagenta\f#c678dd\vviolet\f#a9a1e1\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÉ\a\0\0\6\0&\0-6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0024\3\0\0=\3\b\0025\3\t\0004\4\0\0=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\19\0005\4\18\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0005\5\24\0=\5\25\4=\4\26\0035\4\27\0005\5\28\0=\5\25\4=\4\29\3=\3\30\0025\3\31\0=\3 \0025\3#\0005\4!\0005\5\"\0=\5\25\4=\4$\3=\3%\2B\0\2\1K\0\1\0\16textobjects\vselect\1\0\0\1\0\4\aac\17@class.outer\aaf\20@function.outer\aif\20@function.inner\aic\17@class.inner\1\0\2\venable\2\14lookahead\2\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\rrefactor\15navigation\1\0\5\24goto_previous_usage\n<a-#>\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\21list_definitions\bgnD\20goto_definition\bgnd\1\0\1\venable\2\17smart_rename\fkeymaps\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\frainbow\1\0\2\venable\2\18extended_mode\2\fmatchip\1\0\1\venable\2\14autopairs\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\19ignore_install\fautotag\1\0\1\21ensure_installed\ball\14filetypes\1\b\0\0\thtml\15javascript\20javascriptreact\20typescriptreact\vsvelte\bvue\bxml\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nE\0\0\4\1\4\0\b-\0\0\0009\0\0\0006\2\1\0009\2\2\0029\2\3\2B\2\1\0A\0\0\1K\0\1\0\1¿\nbufnr\afn\bvim\19toggle_previewª\1\0\1\6\1\n\0\0175\1\1\0-\2\0\0009\2\0\2=\2\2\1-\2\0\0009\2\3\2=\2\4\0016\2\5\0'\4\6\0B\2\2\0029\2\a\0029\2\b\0029\2\t\2\18\4\0\0\18\5\1\0B\2\3\1K\0\1\0\0¿\14_hop_loop\bhop\15extensions\14telescope\frequire\18loop_callback\28send_selected_to_qflist\rcallback\1\0\0\21toggle_selectionE\0\0\4\1\4\0\b-\0\0\0009\0\0\0006\2\1\0009\2\2\0029\2\3\2B\2\1\0A\0\0\1K\0\1\0\1¿\nbufnr\afn\bvim\19toggle_previewª\1\0\1\6\1\n\0\0175\1\1\0-\2\0\0009\2\0\2=\2\2\1-\2\0\0009\2\3\2=\2\4\0016\2\5\0'\4\6\0B\2\2\0029\2\a\0029\2\b\0029\2\t\2\18\4\0\0\18\5\1\0B\2\3\1K\0\1\0\0¿\14_hop_loop\bhop\15extensions\14telescope\frequire\18loop_callback\28send_selected_to_qflist\rcallback\1\0\0\21toggle_selection™\6\1\0\f\0%\0[6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0029\3\5\0035\5\25\0005\6\23\0005\a\17\0005\b\a\0009\t\6\2=\t\b\b3\t\t\0=\t\n\b6\t\v\0'\v\4\0B\t\2\0029\t\f\t9\t\r\t9\t\r\t=\t\14\b3\t\15\0=\t\16\b=\b\18\a5\b\19\0009\t\6\2=\t\b\b3\t\20\0=\t\n\b6\t\v\0'\v\4\0B\t\2\0029\t\f\t9\t\r\t9\t\r\t=\t\14\b3\t\21\0=\t\16\b=\b\22\a=\a\24\6=\6\26\0055\6\28\0005\a\27\0=\a\29\0065\a\30\0=\a\r\0065\a\31\0=\a \0064\a\0\0=\a!\6=\6\f\5B\3\2\0016\3\0\0'\5\4\0B\3\2\0029\3\"\3'\5#\0B\3\2\0016\3\0\0'\5\4\0B\3\2\0029\3\"\3'\5$\0B\3\2\0016\3\0\0'\5\4\0B\3\2\0029\3\"\3'\5\29\0B\3\2\0016\3\0\0'\5\4\0B\3\2\0029\3\"\3'\5\r\0B\3\2\0016\3\0\0'\5\4\0B\3\2\0029\3\"\3'\5!\0B\3\2\0012\0\0ÄK\0\1\0\rprojects\bdap\19load_extension\14ui-select\15fzf_writer\1\0\3\28minimum_grep_characters\3\2\20use_highlighter\2\29minimum_files_characters\3\2\1\0\2\20reset_selection\2\16trace_entry\2\bfzf\1\0\0\1\0\4\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\1\rdefaults\1\0\0\rmappings\1\0\0\6n\0\0\1\0\0\6i\1\0\0\14<C-space>\0\n<C-h>\bhop\15extensions\6R\n<C-i>\0\n<C-o>\1\0\0\22open_with_trouble\nsetup\14telescope trouble.providers.telescope\29telescope.actions.layout\22telescope.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\nÀ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\rpatterns\1\b\0\0\t.git\v_darcs\b.hg\t.bzr\t.svn\rMakefile\17package.json\22detection_methods\1\0\2\17silent_chdir\1\16show_hidden\2\1\3\0\0\blsp\fpattern\nsetup\17project_nvim\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: nvim-treesitter-context
time([[Config for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\n£\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\2B\0\2\1K\0\1\0\rpatterns\fdefault\1\0\0\1\4\0\0\nclass\rfunction\vmethod\1\0\3\14max_lines\3\1\rthrottle\2\venable\2\nsetup\23treesitter-context\frequire\0", "config", "nvim-treesitter-context")
time([[Config for nvim-treesitter-context]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\n}\0\4\14\0\a\0\21'\4\0\0006\5\1\0\18\a\2\0B\5\2\4H\b\rÄ\a\b\2\0X\n\2Ä'\n\3\0X\v\5Ä\a\b\4\0X\n\2Ä'\n\5\0X\v\1Ä'\n\6\0\18\v\4\0\18\f\n\0\18\r\t\0&\4\r\vF\b\3\3R\bÒL\4\2\0\bÔÅ™\bÔÅ±\fwarning\bÔÅó\nerror\npairs\6 ø\2\1\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0003\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\3=\3\r\2B\0\2\1K\0\1\0\15highlights\23indicator_selected\1\0\2\nguifg\f#51afef\nguibg\f#282c34\tfill\1\0\0\1\0\2\nguifg\f#282c34\nguibg\f#202328\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\20show_close_icon\1\28show_buffer_close_icons\1\16diagnostics\rnvim_lsp\22show_buffer_icons\2\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: rest.nvim
time([[Config for rest.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14rest-nvim\frequire\0", "config", "rest.nvim")
time([[Config for rest.nvim]], false)
-- Config for: kommentary
time([[Config for kommentary]], true)
try_loadstring("\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireË\1\1\0\5\0\b\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0'\2\4\0005\3\5\0003\4\6\0=\4\a\3B\0\3\1K\0\1\0\18hook_function\0\1\0\2\31multi_line_comment_strings\tauto\31single_line_comment_string\tauto\20typescriptreact\23configure_language\26use_extended_mappings\22kommentary.config\frequire\0", "config", "kommentary")
time([[Config for kommentary]], false)
-- Config for: hop
time([[Config for hop]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\bhop\frequire\0", "config", "hop")
time([[Config for hop]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\np\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÂ\1\0\1\5\3\b\1 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\22Ä6\1\2\0009\1\3\0019\1\4\1)\3\1\0B\1\2\2\t\1\0\0X\1\5Ä-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\a\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\2¿\3¿\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2®\1\0\0\4\2\a\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\vÄ6\0\2\0009\0\3\0009\0\4\0)\2ˇˇB\0\2\2\t\0\0\0X\0\4Ä-\0\1\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\0¿\2¿\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2ó\3\0\2\a\1\15\0!6\2\0\0009\2\1\0029\4\2\1B\2\2\2-\3\0\0\1\3\2\0X\2\tÄ6\2\0\0009\2\3\0029\4\2\1)\5\1\0-\6\0\0B\2\4\2'\3\4\0&\2\3\2=\2\2\0016\2\6\0'\4\a\0B\2\2\0029\2\b\0029\2\t\0029\3\5\0018\2\3\2'\3\n\0009\4\5\1&\2\4\2=\2\5\0015\2\f\0009\3\r\0009\3\14\0038\2\3\2=\2\v\1L\1\2\0\1¿\tname\vsource\1\0\n\15treesitter\17[Treesitter]\nvsnip\f[VSnip]\rnvim_lsp\n[LSP]\26vim-dadbod-completion\r[Dadbod]\vbuffer\r[Buffer]\18latex_symbols\f[Latex]\rnvim_lua\n[Lua]\tpath\v[Path]\16cmp_tabnine\14[Tabnine]\tlook\v[Look]\tmenu\6 \fdefault\fpresets\flspkind\frequire\tkind\bÔõó\bsub\tabbr\blen\vstring·\v\1\0\15\0W\1´\0016\0\0\0'\2\1\0B\0\2\2)\0012\0003\2\2\0003\3\3\0009\4\4\0005\6\6\0005\a\5\0=\a\a\0065\a\t\0003\b\b\0=\b\n\a=\a\v\0065\a\19\0009\b\f\0009\n\f\0009\n\r\n5\f\16\0009\r\14\0009\r\15\r=\r\17\fB\n\2\0025\v\18\0B\b\3\2=\b\20\a9\b\f\0009\n\f\0009\n\21\n5\f\22\0009\r\14\0009\r\15\r=\r\17\fB\n\2\0025\v\23\0B\b\3\2=\b\24\a9\b\f\0009\n\f\0009\n\25\n)\f¸ˇB\n\2\0025\v\26\0B\b\3\2=\b\27\a9\b\f\0009\n\f\0009\n\25\n)\f\4\0B\n\2\0025\v\28\0B\b\3\2=\b\29\a9\b\f\0009\n\f\0009\n\30\nB\n\1\0025\v\31\0B\b\3\2=\b \a9\b!\0009\b\"\b=\b#\a9\b\f\0005\n%\0009\v\f\0009\v$\vB\v\1\2=\v&\n9\v\f\0009\v'\vB\v\1\2=\v(\nB\b\2\2=\b)\a9\b\f\0005\n.\0009\v\f\0009\v*\v5\r-\0009\14+\0009\14,\14=\14\17\rB\v\2\2=\v&\n9\v\f\0009\v*\v5\r/\0B\v\2\2=\v(\nB\b\2\2=\b0\a9\b\f\0003\n1\0005\v2\0B\b\3\2=\b3\a9\b\f\0003\n4\0005\v5\0B\b\3\2=\b6\a=\a\f\0064\a\a\0005\b7\0>\b\1\a5\b8\0>\b\2\a5\b9\0>\b\3\a5\b:\0>\b\4\a5\b;\0005\t<\0=\t=\b>\b\5\a5\b>\0>\b\6\a=\a?\0065\a@\0003\bA\0=\bB\a=\aC\6B\4\2\0016\4\0\0'\6D\0B\4\2\0029\5E\0\18\a\5\0009\5F\5'\bG\0009\tH\0045\vJ\0005\fI\0=\fK\vB\t\2\0A\5\2\0019\5L\0049\6L\4\21\6\6\0\22\6\0\6'\aM\0<\a\6\0059\5\4\0009\5N\5'\aO\0005\bQ\0005\tP\0=\t\a\b9\t!\0009\t?\t4\v\3\0005\fR\0>\f\1\v4\f\3\0005\rS\0>\r\1\fB\t\3\2=\t?\bB\5\3\0019\5\4\0009\5N\5'\aT\0005\bV\0004\t\3\0005\nU\0>\n\1\t=\t?\bB\5\3\0012\0\0ÄK\0\1\0\1\0\0\1\0\1\tname\vbuffer\6/\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\1\0\1\17autocomplete\1\6:\fcmdline\vracket\tlisp\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\15formatting\vformat\0\1\0\1\15deprecated\2\fsources\1\0\1\tname\26vim-dadbod-completion\foptiona\1\0\2\17convert_case\2\tloud\2\1\0\3\19max_item_count\3\5\tname\tlook\19keyword_length\3\2\1\0\1\tname\tpath\1\0\2\tname\vbuffer\19max_item_count\3\n\1\0\1\tname\rnvim_lsp\1\0\1\tname\nvsnip\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\1\0\0\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-p>\1\3\0\0\6i\6c\1\0\0\21select_prev_item\n<C-n>\1\0\0\1\3\0\0\6i\6c\rbehavior\1\0\0\vSelect\19SelectBehavior\21select_next_item\fmapping\fsnippet\vexpand\1\0\0\0\15completion\1\0\0\1\0\1\16completeopt\26menu,menuone,noinsert\nsetup\0\0\bcmp\frequire\2\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\nâ\3\0\0\4\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0024\3\0\0=\3\b\0024\3\0\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\16diagnostics\1\0\3\15background\2\vdarker\2\14undercurl\2\15highlights\vcolors\15code_style\1\0\5\14functions\tnone\rcomments\vitalic\rkeywords\tnone\14variables\tnone\fstrings\tnone\22toggle_style_list\1\b\0\0\tdark\vdarker\tcool\tdeep\twarm\vwarmer\nlight\1\0\5\nstyle\tdark\21toggle_style_key\15<leader>ts\18ending_tildes\1\16term_colors\1\16transparent\1\nsetup\fonedark\frequire\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Config for: spellsitter.nvim
time([[Config for spellsitter.nvim]], true)
try_loadstring("\27LJ\2\ne\0\0\4\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\2B\0\2\1K\0\1\0\rcaptures\1\0\2\ahl\rSpellBad\venable\2\nsetup\16spellsitter\frequire\0", "config", "spellsitter.nvim")
time([[Config for spellsitter.nvim]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
try_loadstring("\27LJ\2\nu\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15file_panel\1\0\1\nwidth\3#\1\0\2\14use_icons\2\18diff_binaries\1\nsetup\rdiffview\frequire\0", "config", "diffview.nvim")
time([[Config for diffview.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n‚\a\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0=\4\b\0035\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\fkeymaps\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\1\0\v\17v <leader>gsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17n <leader>gs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>gb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\fnoremap\2\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17v <leader>grT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\28current_line_blame_opts\1\0\1\ndelay\3Ù\3\1\0\1\23current_line_blame\2\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\nä\1\0\0\5\0\6\0\n5\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0B\2\2\2>\2\2\1=\1\5\0L\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\4\0\0\21--stdin-filepath\0\19--single-quote\1\0\2\bexe\rprettier\nstdin\2D\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\2\0\0\18--emit=stdout\1\0\2\bexe\frustfmt\nstdin\2J\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\19--indent-width\3\2\1\0\2\bexe\15lua-format\nstdin\2¢\1\1\0\6\0\f\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0004\4\3\0003\5\4\0>\5\1\4=\4\6\0034\4\3\0003\5\a\0>\5\1\4=\4\b\0034\4\3\0003\5\t\0>\5\1\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\rfiletype\blua\0\trust\0\15javascript\1\0\0\0\1\0\1\flogging\1\nsetup\14formatter\frequire\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-dap-virtual-text
time([[Config for nvim-dap-virtual-text]], true)
try_loadstring("\27LJ\2\nV\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\15all_frames\2\nsetup\26nvim-dap-virtual-text\frequire\0", "config", "nvim-dap-virtual-text")
time([[Config for nvim-dap-virtual-text]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nï\a\0\0\6\0.\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\1\3\0005\3\21\0005\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\0045\5\v\0=\5\f\0045\5\r\0=\5\14\0045\5\15\0=\5\16\0045\5\17\0=\5\18\0045\5\19\0=\5\20\4=\4\22\0035\4\23\0=\4\24\0035\4\25\0005\5\26\0=\5\27\4=\4\28\0035\4\29\0=\4\20\0035\4\30\0=\4\31\0035\4 \0=\4!\0035\4\"\0=\4\b\0035\4#\0=\4$\0035\4%\0=\4&\0035\4'\0=\4\18\0035\4(\0=\4\f\0035\4)\0=\4\14\0035\4*\0=\4+\0035\4,\0=\4\16\0035\4-\0B\1\3\1K\0\1\0\1\0\1\vprefix\r<leader>\1\0\1\tname\15Git Action\6p\1\0\1\tname\27Paste System Clipboard\1\0\1\tname\14Workspace\1\0\1\tname\14Translate\1\0\1\tname\29Session & Spectre Action\6r\1\0\1\tname\27Ranger & Rename & Rest\6o\1\0\1\tname\29Operate Dashboard Action\1\0\1\tname\22Markdown & Format\6l\1\0\1\tname\20List Of Trouble\6x\1\0\1\tname\25Close Current Buffer\1\0\1\tname\15DAP Action\6c\6j\1\0\1\tname\21Java Code Action\1\0\1\tname\16Code Action\6b\1\0\1\tname\19Buffer Operate\6f\1\0\0\6d\1\0\1\tname\25DAP Telescope Action\6s\1\0\1\tname\fSpectre\6g\1\0\1\tname\15Git Action\6w\1\0\1\tname\27Workspace & LSP Action\6t\1\0\1\tname\27TreeSitter & FileTypes\6h\1\0\1\tname\31History & Help & Highlight\6m\1\0\1\tname\tMark\6i\1\0\1\tname\23Buildin & Reloader\1\0\1\tname\31Find By Telescope & Format\rregister\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-toggleterm.lua
time([[Config for nvim-toggleterm.lua]], true)
try_loadstring("\27LJ\2\n–\1\0\0\4\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3=\3\6\2B\0\2\1K\0\1\0\nshell\6o\bvim\1\0\b\20start_in_insert\2\20shade_terminals\1\17hide_numbers\1\tsize\3\15\18close_on_exit\2\14direction\nfloat\17persist_size\2\20insert_mappings\1\nsetup\15toggleterm\frequire\0", "config", "nvim-toggleterm.lua")
time([[Config for nvim-toggleterm.lua]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
