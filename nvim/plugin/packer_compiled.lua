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
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n]\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\23alpha.themes.theta\nsetup\nalpha\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["auto-session"] = {
    config = { "\27LJ\2\n•\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0#bypass_session_save_file_types\1\2\0\0\nalpha\31auto_session_suppress_dirs\1\0\0\1\3\0\0\6~\14~/project\nsetup\17auto-session\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/auto-session",
    url = "https://github.com/rmagatti/auto-session"
  },
  ["cheatsheet.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/cheatsheet.nvim",
    url = "https://github.com/sudormrfbin/cheatsheet.nvim"
  },
  ["diffview.nvim"] = {
    config = { "\27LJ\2\nu\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15file_panel\1\0\1\nwidth\3#\1\0\2\14use_icons\2\18diff_binaries\1\nsetup\rdiffview\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n‚\a\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0=\4\b\0035\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\fkeymaps\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\1\0\v\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17n <leader>gp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\fnoremap\2\17n <leader>gb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\17v <leader>grT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17v <leader>gsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>gs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\28current_line_blame_opts\1\0\1\ndelay\3Ù\3\1\0\1\23current_line_blame\2\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n\\\0\0\5\0\5\1\0156\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvimñ\1\0\0\6\0\a\0\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\3\5\0\18\4\0\0'\5\6\0&\4\5\4B\1\3\2\r\2\1\0X\2\vÄ\21\2\1\0)\3\0\0\1\3\2\0X\2\4Ä\21\2\1\0\21\3\0\0\0\2\3\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvim:\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0B\0\1\0029\0\3\0L\0\2\0\tmode\18nvim_get_mode\bapi\bvim0\0\0\3\2\1\0\t-\0\0\0B\0\1\2-\1\1\0008\1\0\1\14\0\1\0X\2\2Ä'\2\0\0L\2\2\0L\1\2\0\4¿\3¿\5I\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_x\rsections\vinsert\ntableR\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_c\22inactive_sections\vinsert\ntableR\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_x\22inactive_sections\vinsert\ntable\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b‚ñäÃ\5\0\0\a\0023\0z5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\3\1=\1\5\0-\1\0\0009\1\3\1=\1\6\0-\1\0\0009\1\3\1=\1\a\0-\1\0\0009\1\0\1=\1\b\0-\1\0\0009\1\0\1=\1\t\0-\1\0\0009\1\0\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\f\1=\1\16\0-\1\0\0009\1\f\1=\1\17\0-\1\0\0009\1\f\1=\1\18\0-\1\0\0009\1\19\1=\1\20\0-\1\0\0009\1\19\1=\1\21\0-\1\0\0009\1\19\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0-\1\0\0009\1\0\1=\1\28\0-\1\0\0009\1\0\1=\1\29\0-\1\0\0009\1\0\1=\1\30\0-\1\0\0009\1\0\1=\1\31\0-\1\0\0009\1\0\1=\1 \0-\1\0\0009\1!\1=\1\"\0-\1\0\0009\1!\1=\1#\0-\1\0\0009\1\0\1=\1$\0-\1\0\0009\1%\1=\1&\0-\1\0\0009\1%\1=\1'\0-\1\0\0009\1%\1=\1(\0-\1\0\0009\1\3\1=\1)\0-\1\0\0009\1\3\1=\1*\0006\1+\0009\1,\0019\1-\1'\3.\0006\4+\0009\4/\0049\0040\4B\4\1\0028\4\4\0'\0051\0-\6\0\0009\0062\6&\3\6\3B\1\2\1-\1\1\0D\1\1\0\1¿\5¿\abg\f guibg=\tmode\afn$hi! LualineMode gui=bold guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\6c\fmagenta\bRvx\bRvc\aRv\aRx\aRc\6R\aix\aic\6i\ngreen\6\19\6S\6s\vorange\a\22s\6\22\aVs\6V\avs\6v\tblue\ant\bniV\bniR\bniI\bno\22\bnoV\bnov\ano\bred\6n\1\0\0\vviolet\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=≥\3\0\0\14\0\21\2B'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\0026\2\1\0009\2\5\0029\2\6\2B\2\1\0026\3\a\0\18\5\2\0B\3\2\2\v\3\0\0X\3\1ÄL\0\2\0'\3\b\0006\4\t\0\18\6\2\0B\4\2\4X\a\24Ä9\t\n\b9\t\v\t\15\0\t\0X\n\20Ä6\n\1\0009\n\f\n9\n\r\n\18\f\t\0\18\r\1\0B\n\3\2\b\n\0\0X\n\fÄ9\n\14\b6\v\1\0009\v\f\v9\v\15\vB\v\1\0028\n\v\n\n\n\0\0X\n\4Ä\18\n\3\0009\v\16\b'\f\17\0&\3\f\nE\a\3\3R\aÊ6\4\18\0009\4\19\4\18\6\3\0B\4\2\2)\5\0\0\1\5\4\0X\4\nÄ6\4\18\0009\4\20\4\18\6\3\0)\a\1\0006\b\18\0009\b\19\b\18\n\3\0B\b\2\2\23\b\1\bD\4\4\0L\0\2\0\bsub\blen\vstring\6 \tname\nbufnr\21attached_buffers\nindex\afn\14filetypes\vconfig\vipairs\5\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\18No Active Lsp˛ˇˇˇ\31\2\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b‚ñäÖ\19\1\0\17\0p\0Â\0016\0\0\0'\2\1\0B\0\2\0025\1\2\0005\2\4\0003\3\3\0=\3\5\0023\3\6\0=\3\a\0023\3\b\0=\3\t\0025\3\n\0003\4\v\0003\5\f\0005\6\25\0005\a\r\0005\b\19\0005\t\17\0005\n\15\0009\v\14\1=\v\14\n9\v\16\1=\v\16\n=\n\18\t=\t\20\b5\t\22\0005\n\21\0009\v\14\1=\v\14\n9\v\16\1=\v\16\n=\n\18\t=\t\23\b=\b\24\a=\a\26\0065\a\27\0004\b\0\0=\b\28\a4\b\0\0=\b\29\a4\b\0\0=\b\30\a4\b\0\0=\b\31\a4\b\0\0=\b \a4\b\0\0=\b!\a=\a\"\0065\a#\0004\b\0\0=\b\28\a4\b\0\0=\b$\a4\b\0\0=\b\30\a4\b\0\0=\b\31\a4\b\0\0=\b \a4\b\0\0=\b!\a=\a%\0063\a&\0003\b'\0003\t(\0003\n)\0\18\v\a\0005\r-\0003\14*\0>\14\1\r5\14,\0009\15+\1=\15\14\14=\14.\r5\14/\0=\0140\rB\v\2\1\18\v\a\0005\r2\0003\0141\0>\14\1\r5\0143\0=\0140\rB\v\2\1\18\v\a\0005\r4\0009\14\5\2=\0145\rB\v\2\1\18\v\a\0005\r6\0009\14\5\2=\0145\r5\0148\0009\0157\1=\15\14\14=\14.\rB\v\2\1\18\v\a\0005\r9\0005\14;\0009\15:\1=\15\14\14=\14.\rB\v\2\1\18\v\a\0005\r<\0005\14=\0=\14>\r5\14A\0005\15@\0009\16?\1=\16\14\15=\15B\0145\15D\0009\16C\1=\16\14\15=\15E\0145\15G\0009\16F\1=\16\14\15=\15H\14=\14I\r9\14\a\2=\0145\rB\v\2\1\18\v\a\0004\r\3\0003\14J\0>\14\1\rB\v\2\1\18\v\a\0005\rL\0003\14K\0>\14\1\r5\14N\0009\15M\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\rO\0005\14P\0=\14Q\r5\14R\0=\14>\r5\14T\0005\15S\0009\16F\1=\16\14\15=\15U\0145\15W\0009\16V\1=\16\14\15=\15X\0145\15Y\0009\16M\1=\16\14\15=\15Z\14=\14[\rB\v\2\1\18\v\b\0005\r\\\0006\14]\0009\14^\14=\14_\r9\14\a\2=\0145\r5\14`\0009\15?\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\ra\0006\14]\0009\14^\14=\14_\r5\14b\0009\15?\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\rc\0B\v\2\1\18\v\b\0005\rd\0005\14e\0009\15\14\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\rh\0003\14f\0>\14\1\r5\14g\0009\15+\1=\15\14\14=\14.\r5\14i\0=\0140\rB\v\2\1\18\v\t\0005\rj\0009\14\5\2=\0145\r5\14k\0009\0157\1=\15\14\14=\14.\rB\v\2\1\18\v\n\0005\rl\0B\v\2\1\18\v\n\0005\rm\0005\14n\0009\15\14\1=\15\14\14=\14.\rB\v\2\0019\vo\0\18\r\6\0B\v\2\0012\0\0ÄK\0\1\0\nsetup\1\0\1\bgui\tbold\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\1\bgui\tbold\1\2\0\0\rfilename\1\0\2\nright\3\0\tleft\3\1\1\0\0\1\0\0\0\1\0\1\bgui\tbold\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\1\bgui\tbold\1\2\1\0\15fileformat\18icons_enabled\1\1\0\1\bgui\tbold\bfmt\nupper\vstring\1\2\0\0\15o:encoding\22diagnostics_color\15color_info\1\0\0\15color_warn\1\0\0\vyellow\16color_error\1\0\0\1\0\0\1\0\3\twarn\tÔÅ± \nerror\tÔÅó \tinfo\tÔÅ™ \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\1\bgui\tbold\tcyan\1\0\1\ticon\rÔÇÖ LSP:\0\0\15diff_color\fremoved\1\0\0\bred\rmodified\1\0\0\vorange\nadded\1\0\0\1\0\0\ngreen\fsymbols\1\0\3\nadded\tÔÉæ \rmodified\tÔßâ \fremoved\tÔÖÜ \1\2\0\0\tdiff\1\0\1\bgui\tbold\vviolet\1\2\1\0\vbranch\ticon\bÔëø\1\0\1\bgui\tbold\fmagenta\1\2\0\0\rfilename\tcond\1\2\0\0\rfilesize\1\0\1\nright\3\1\1\0\1\ncolor\16LualineMode\0\fpadding\1\0\2\nright\3\1\tleft\3\0\ncolor\1\0\0\1\0\0\tblue\0\0\0\0\0\22inactive_sections\14lualine_v\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\1\0\0\afg\1\0\2\23section_separators\5\25component_separators\5\0\0\1\0#\aRv\14V-REPLACE\aRx\fREPLACE\aRc\fREPLACE\aix\vI-COMP\6R\fREPLACE\6\19\fS-BLOCK\6r\fREPLACE\6\22\fV-BLOCK\6S\vS-LINE\a\22s\fV-BLOCK\aVs\vV-LINE\6V\vV-LINE\avs\vVISUAL\6i\vINSERT\ant\vNORMAL\bniV\vNORMAL\bniR\vNORMAL\bniI\vNORMAL\bno\22\14O-PENDING\bnoV\14O-PENDING\bnov\14O-PENDING\6!\nSHELL\ano\14O-PENDING\6c\fCOMMAND\6t\rTERMINAL\6s\vSELECT\6v\vVISUAL\ar?\fCONFIRM\aic\vI-COMP\arm\tMORE\ace\14EX-NORMAL\acv\15EX-COMMAND\6n\vNORMAL\bRvx\14V-REPLACE\bRvc\14V-REPLACE\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\1\0\v\vorange\f#FF8800\vyellow\f#ECBE7B\ngreen\f#98be65\tblue\f#51afef\rdarkblue\f#081633\tcyan\f#008080\abg\f#202328\bred\f#ec5f67\afg\f#bbc2cf\fmagenta\f#c678dd\vviolet\f#a9a1e1\flualine\frequire\0" },
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
    config = { "\27LJ\2\n}\0\4\14\0\a\0\21'\4\0\0006\5\1\0\18\a\2\0B\5\2\4H\b\rÄ\a\b\2\0X\n\2Ä'\n\3\0X\v\5Ä\a\b\4\0X\n\2Ä'\n\5\0X\v\1Ä'\n\6\0\18\v\4\0\18\f\n\0\18\r\t\0&\4\r\vF\b\3\3R\bÒL\4\2\0\bÔÅ™\bÔÅ±\fwarning\bÔÅó\nerror\npairs\6 ø\2\1\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0003\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\3=\3\r\2B\0\2\1K\0\1\0\15highlights\23indicator_selected\1\0\2\nguibg\f#282c34\nguifg\f#51afef\tfill\1\0\0\1\0\2\nguibg\f#202328\nguifg\f#282c34\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\16diagnostics\rnvim_lsp\28show_buffer_close_icons\1\20show_close_icon\1\22show_buffer_icons\2\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-hlslens"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://github.com/windwp/nvim-spectre"
  },
  ["nvim-toggleterm.lua"] = {
    config = { "\27LJ\2\n˛\1\0\0\4\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3=\3\6\2B\0\2\1K\0\1\0\nshell\6o\bvim\1\0\n\18close_on_exit\2\14direction\nfloat\22terminal_mappings\2\20insert_mappings\2\20start_in_insert\2\19shading_factor\3\3\20shade_terminals\1\17hide_numbers\1\17open_mapping\15<c-\\><c-\\>\tsize\3\15\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua",
    url = "https://github.com/akinsho/nvim-toggleterm.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÉ\a\0\0\6\0&\0-6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0024\3\0\0=\3\b\0025\3\t\0004\4\0\0=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\19\0005\4\18\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0005\5\24\0=\5\25\4=\4\26\0035\4\27\0005\5\28\0=\5\25\4=\4\29\3=\3\30\0025\3\31\0=\3 \0025\3#\0005\4!\0005\5\"\0=\5\25\4=\4$\3=\3%\2B\0\2\1K\0\1\0\16textobjects\vselect\1\0\0\1\0\4\aac\17@class.outer\aaf\20@function.outer\aif\20@function.inner\aic\17@class.inner\1\0\2\venable\2\14lookahead\2\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\rrefactor\15navigation\1\0\5\24goto_previous_usage\n<a-#>\21list_definitions\bgnD\20goto_definition\bgnd\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\1\0\1\venable\2\17smart_rename\fkeymaps\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\frainbow\1\0\2\venable\2\18extended_mode\2\fmatchip\1\0\1\venable\2\14autopairs\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\19ignore_install\fautotag\1\0\1\21ensure_installed\ball\14filetypes\1\b\0\0\thtml\15javascript\20javascriptreact\20typescriptreact\vsvelte\bvue\bxml\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
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
  rnvimr = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/rnvimr",
    url = "https://github.com/kevinhwang91/rnvimr"
  },
  ["session-lens"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17session-lens\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/session-lens",
    url = "https://github.com/rmagatti/session-lens"
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
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-dadbod",
    url = "https://github.com/tpope/vim-dadbod"
  },
  ["vim-dadbod-ui"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui",
    url = "https://github.com/kristijanhusak/vim-dadbod-ui"
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
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
try_loadstring("\27LJ\2\nu\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15file_panel\1\0\1\nwidth\3#\1\0\2\14use_icons\2\18diff_binaries\1\nsetup\rdiffview\frequire\0", "config", "diffview.nvim")
time([[Config for diffview.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n]\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\23alpha.themes.theta\nsetup\nalpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: session-lens
time([[Config for session-lens]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17session-lens\frequire\0", "config", "session-lens")
time([[Config for session-lens]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\n}\0\4\14\0\a\0\21'\4\0\0006\5\1\0\18\a\2\0B\5\2\4H\b\rÄ\a\b\2\0X\n\2Ä'\n\3\0X\v\5Ä\a\b\4\0X\n\2Ä'\n\5\0X\v\1Ä'\n\6\0\18\v\4\0\18\f\n\0\18\r\t\0&\4\r\vF\b\3\3R\bÒL\4\2\0\bÔÅ™\bÔÅ±\fwarning\bÔÅó\nerror\npairs\6 ø\2\1\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0003\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\3=\3\r\2B\0\2\1K\0\1\0\15highlights\23indicator_selected\1\0\2\nguibg\f#282c34\nguifg\f#51afef\tfill\1\0\0\1\0\2\nguibg\f#202328\nguifg\f#282c34\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\16diagnostics\rnvim_lsp\28show_buffer_close_icons\1\20show_close_icon\1\22show_buffer_icons\2\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n‚\a\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0=\4\b\0035\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\fkeymaps\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\1\0\v\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17n <leader>gp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\fnoremap\2\17n <leader>gb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\17v <leader>grT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17v <leader>gsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>gs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\28current_line_blame_opts\1\0\1\ndelay\3Ù\3\1\0\1\23current_line_blame\2\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n\\\0\0\5\0\5\1\0156\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvimñ\1\0\0\6\0\a\0\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\3\5\0\18\4\0\0'\5\6\0&\4\5\4B\1\3\2\r\2\1\0X\2\vÄ\21\2\1\0)\3\0\0\1\3\2\0X\2\4Ä\21\2\1\0\21\3\0\0\0\2\3\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvim:\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0B\0\1\0029\0\3\0L\0\2\0\tmode\18nvim_get_mode\bapi\bvim0\0\0\3\2\1\0\t-\0\0\0B\0\1\2-\1\1\0008\1\0\1\14\0\1\0X\2\2Ä'\2\0\0L\2\2\0L\1\2\0\4¿\3¿\5I\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_x\rsections\vinsert\ntableR\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_c\22inactive_sections\vinsert\ntableR\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_x\22inactive_sections\vinsert\ntable\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b‚ñäÃ\5\0\0\a\0023\0z5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\3\1=\1\5\0-\1\0\0009\1\3\1=\1\6\0-\1\0\0009\1\3\1=\1\a\0-\1\0\0009\1\0\1=\1\b\0-\1\0\0009\1\0\1=\1\t\0-\1\0\0009\1\0\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\f\1=\1\16\0-\1\0\0009\1\f\1=\1\17\0-\1\0\0009\1\f\1=\1\18\0-\1\0\0009\1\19\1=\1\20\0-\1\0\0009\1\19\1=\1\21\0-\1\0\0009\1\19\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0-\1\0\0009\1\0\1=\1\28\0-\1\0\0009\1\0\1=\1\29\0-\1\0\0009\1\0\1=\1\30\0-\1\0\0009\1\0\1=\1\31\0-\1\0\0009\1\0\1=\1 \0-\1\0\0009\1!\1=\1\"\0-\1\0\0009\1!\1=\1#\0-\1\0\0009\1\0\1=\1$\0-\1\0\0009\1%\1=\1&\0-\1\0\0009\1%\1=\1'\0-\1\0\0009\1%\1=\1(\0-\1\0\0009\1\3\1=\1)\0-\1\0\0009\1\3\1=\1*\0006\1+\0009\1,\0019\1-\1'\3.\0006\4+\0009\4/\0049\0040\4B\4\1\0028\4\4\0'\0051\0-\6\0\0009\0062\6&\3\6\3B\1\2\1-\1\1\0D\1\1\0\1¿\5¿\abg\f guibg=\tmode\afn$hi! LualineMode gui=bold guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\6c\fmagenta\bRvx\bRvc\aRv\aRx\aRc\6R\aix\aic\6i\ngreen\6\19\6S\6s\vorange\a\22s\6\22\aVs\6V\avs\6v\tblue\ant\bniV\bniR\bniI\bno\22\bnoV\bnov\ano\bred\6n\1\0\0\vviolet\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=≥\3\0\0\14\0\21\2B'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\0026\2\1\0009\2\5\0029\2\6\2B\2\1\0026\3\a\0\18\5\2\0B\3\2\2\v\3\0\0X\3\1ÄL\0\2\0'\3\b\0006\4\t\0\18\6\2\0B\4\2\4X\a\24Ä9\t\n\b9\t\v\t\15\0\t\0X\n\20Ä6\n\1\0009\n\f\n9\n\r\n\18\f\t\0\18\r\1\0B\n\3\2\b\n\0\0X\n\fÄ9\n\14\b6\v\1\0009\v\f\v9\v\15\vB\v\1\0028\n\v\n\n\n\0\0X\n\4Ä\18\n\3\0009\v\16\b'\f\17\0&\3\f\nE\a\3\3R\aÊ6\4\18\0009\4\19\4\18\6\3\0B\4\2\2)\5\0\0\1\5\4\0X\4\nÄ6\4\18\0009\4\20\4\18\6\3\0)\a\1\0006\b\18\0009\b\19\b\18\n\3\0B\b\2\2\23\b\1\bD\4\4\0L\0\2\0\bsub\blen\vstring\6 \tname\nbufnr\21attached_buffers\nindex\afn\14filetypes\vconfig\vipairs\5\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\18No Active Lsp˛ˇˇˇ\31\2\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b‚ñäÖ\19\1\0\17\0p\0Â\0016\0\0\0'\2\1\0B\0\2\0025\1\2\0005\2\4\0003\3\3\0=\3\5\0023\3\6\0=\3\a\0023\3\b\0=\3\t\0025\3\n\0003\4\v\0003\5\f\0005\6\25\0005\a\r\0005\b\19\0005\t\17\0005\n\15\0009\v\14\1=\v\14\n9\v\16\1=\v\16\n=\n\18\t=\t\20\b5\t\22\0005\n\21\0009\v\14\1=\v\14\n9\v\16\1=\v\16\n=\n\18\t=\t\23\b=\b\24\a=\a\26\0065\a\27\0004\b\0\0=\b\28\a4\b\0\0=\b\29\a4\b\0\0=\b\30\a4\b\0\0=\b\31\a4\b\0\0=\b \a4\b\0\0=\b!\a=\a\"\0065\a#\0004\b\0\0=\b\28\a4\b\0\0=\b$\a4\b\0\0=\b\30\a4\b\0\0=\b\31\a4\b\0\0=\b \a4\b\0\0=\b!\a=\a%\0063\a&\0003\b'\0003\t(\0003\n)\0\18\v\a\0005\r-\0003\14*\0>\14\1\r5\14,\0009\15+\1=\15\14\14=\14.\r5\14/\0=\0140\rB\v\2\1\18\v\a\0005\r2\0003\0141\0>\14\1\r5\0143\0=\0140\rB\v\2\1\18\v\a\0005\r4\0009\14\5\2=\0145\rB\v\2\1\18\v\a\0005\r6\0009\14\5\2=\0145\r5\0148\0009\0157\1=\15\14\14=\14.\rB\v\2\1\18\v\a\0005\r9\0005\14;\0009\15:\1=\15\14\14=\14.\rB\v\2\1\18\v\a\0005\r<\0005\14=\0=\14>\r5\14A\0005\15@\0009\16?\1=\16\14\15=\15B\0145\15D\0009\16C\1=\16\14\15=\15E\0145\15G\0009\16F\1=\16\14\15=\15H\14=\14I\r9\14\a\2=\0145\rB\v\2\1\18\v\a\0004\r\3\0003\14J\0>\14\1\rB\v\2\1\18\v\a\0005\rL\0003\14K\0>\14\1\r5\14N\0009\15M\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\rO\0005\14P\0=\14Q\r5\14R\0=\14>\r5\14T\0005\15S\0009\16F\1=\16\14\15=\15U\0145\15W\0009\16V\1=\16\14\15=\15X\0145\15Y\0009\16M\1=\16\14\15=\15Z\14=\14[\rB\v\2\1\18\v\b\0005\r\\\0006\14]\0009\14^\14=\14_\r9\14\a\2=\0145\r5\14`\0009\15?\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\ra\0006\14]\0009\14^\14=\14_\r5\14b\0009\15?\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\rc\0B\v\2\1\18\v\b\0005\rd\0005\14e\0009\15\14\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\rh\0003\14f\0>\14\1\r5\14g\0009\15+\1=\15\14\14=\14.\r5\14i\0=\0140\rB\v\2\1\18\v\t\0005\rj\0009\14\5\2=\0145\r5\14k\0009\0157\1=\15\14\14=\14.\rB\v\2\1\18\v\n\0005\rl\0B\v\2\1\18\v\n\0005\rm\0005\14n\0009\15\14\1=\15\14\14=\14.\rB\v\2\0019\vo\0\18\r\6\0B\v\2\0012\0\0ÄK\0\1\0\nsetup\1\0\1\bgui\tbold\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\1\bgui\tbold\1\2\0\0\rfilename\1\0\2\nright\3\0\tleft\3\1\1\0\0\1\0\0\0\1\0\1\bgui\tbold\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\1\bgui\tbold\1\2\1\0\15fileformat\18icons_enabled\1\1\0\1\bgui\tbold\bfmt\nupper\vstring\1\2\0\0\15o:encoding\22diagnostics_color\15color_info\1\0\0\15color_warn\1\0\0\vyellow\16color_error\1\0\0\1\0\0\1\0\3\twarn\tÔÅ± \nerror\tÔÅó \tinfo\tÔÅ™ \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\1\bgui\tbold\tcyan\1\0\1\ticon\rÔÇÖ LSP:\0\0\15diff_color\fremoved\1\0\0\bred\rmodified\1\0\0\vorange\nadded\1\0\0\1\0\0\ngreen\fsymbols\1\0\3\nadded\tÔÉæ \rmodified\tÔßâ \fremoved\tÔÖÜ \1\2\0\0\tdiff\1\0\1\bgui\tbold\vviolet\1\2\1\0\vbranch\ticon\bÔëø\1\0\1\bgui\tbold\fmagenta\1\2\0\0\rfilename\tcond\1\2\0\0\rfilesize\1\0\1\nright\3\1\1\0\1\ncolor\16LualineMode\0\fpadding\1\0\2\nright\3\1\tleft\3\0\ncolor\1\0\0\1\0\0\tblue\0\0\0\0\0\22inactive_sections\14lualine_v\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\1\0\0\afg\1\0\2\23section_separators\5\25component_separators\5\0\0\1\0#\aRv\14V-REPLACE\aRx\fREPLACE\aRc\fREPLACE\aix\vI-COMP\6R\fREPLACE\6\19\fS-BLOCK\6r\fREPLACE\6\22\fV-BLOCK\6S\vS-LINE\a\22s\fV-BLOCK\aVs\vV-LINE\6V\vV-LINE\avs\vVISUAL\6i\vINSERT\ant\vNORMAL\bniV\vNORMAL\bniR\vNORMAL\bniI\vNORMAL\bno\22\14O-PENDING\bnoV\14O-PENDING\bnov\14O-PENDING\6!\nSHELL\ano\14O-PENDING\6c\fCOMMAND\6t\rTERMINAL\6s\vSELECT\6v\vVISUAL\ar?\fCONFIRM\aic\vI-COMP\arm\tMORE\ace\14EX-NORMAL\acv\15EX-COMMAND\6n\vNORMAL\bRvx\14V-REPLACE\bRvc\14V-REPLACE\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\1\0\v\vorange\f#FF8800\vyellow\f#ECBE7B\ngreen\f#98be65\tblue\f#51afef\rdarkblue\f#081633\tcyan\f#008080\abg\f#202328\bred\f#ec5f67\afg\f#bbc2cf\fmagenta\f#c678dd\vviolet\f#a9a1e1\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-toggleterm.lua
time([[Config for nvim-toggleterm.lua]], true)
try_loadstring("\27LJ\2\n˛\1\0\0\4\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3=\3\6\2B\0\2\1K\0\1\0\nshell\6o\bvim\1\0\n\18close_on_exit\2\14direction\nfloat\22terminal_mappings\2\20insert_mappings\2\20start_in_insert\2\19shading_factor\3\3\20shade_terminals\1\17hide_numbers\1\17open_mapping\15<c-\\><c-\\>\tsize\3\15\nsetup\15toggleterm\frequire\0", "config", "nvim-toggleterm.lua")
time([[Config for nvim-toggleterm.lua]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-treesitter-context
time([[Config for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\n£\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\2B\0\2\1K\0\1\0\rpatterns\fdefault\1\0\0\1\4\0\0\nclass\rfunction\vmethod\1\0\3\14max_lines\3\1\rthrottle\2\venable\2\nsetup\23treesitter-context\frequire\0", "config", "nvim-treesitter-context")
time([[Config for nvim-treesitter-context]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÉ\a\0\0\6\0&\0-6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0024\3\0\0=\3\b\0025\3\t\0004\4\0\0=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\19\0005\4\18\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0005\5\24\0=\5\25\4=\4\26\0035\4\27\0005\5\28\0=\5\25\4=\4\29\3=\3\30\0025\3\31\0=\3 \0025\3#\0005\4!\0005\5\"\0=\5\25\4=\4$\3=\3%\2B\0\2\1K\0\1\0\16textobjects\vselect\1\0\0\1\0\4\aac\17@class.outer\aaf\20@function.outer\aif\20@function.inner\aic\17@class.inner\1\0\2\venable\2\14lookahead\2\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\rrefactor\15navigation\1\0\5\24goto_previous_usage\n<a-#>\21list_definitions\bgnD\20goto_definition\bgnd\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\1\0\1\venable\2\17smart_rename\fkeymaps\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\frainbow\1\0\2\venable\2\18extended_mode\2\fmatchip\1\0\1\venable\2\14autopairs\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\19ignore_install\fautotag\1\0\1\21ensure_installed\ball\14filetypes\1\b\0\0\thtml\15javascript\20javascriptreact\20typescriptreact\vsvelte\bvue\bxml\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: auto-session
time([[Config for auto-session]], true)
try_loadstring("\27LJ\2\n•\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0#bypass_session_save_file_types\1\2\0\0\nalpha\31auto_session_suppress_dirs\1\0\0\1\3\0\0\6~\14~/project\nsetup\17auto-session\frequire\0", "config", "auto-session")
time([[Config for auto-session]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
