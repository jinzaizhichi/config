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
  ["DAPInstall.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/DAPInstall.nvim",
    url = "https://github.com/Pocco81/DAPInstall.nvim"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n]\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\23alpha.themes.theta\nsetup\nalpha\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bufdelete.nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/bufdelete.nvim",
    url = "https://github.com/famiu/bufdelete.nvim"
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
  ["cmp-nvim-lsp-document-symbol"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-document-symbol",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-document-symbol"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
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
  firenvim = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/firenvim",
    url = "https://github.com/glacambre/firenvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n„\a\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0=\4\b\0035\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\fkeymaps\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\1\0\v\17n <leader>gp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17v <leader>gsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\18n <leader>gbl4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\17n <leader>gs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\fnoremap\2\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17v <leader>grT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\28current_line_blame_opts\1\0\1\ndelay\3Ù\3\1\0\1\23current_line_blame\2\nsetup\rgitsigns\frequire\0" },
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
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n\\\0\0\5\0\5\1\0156\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvimñ\1\0\0\6\0\a\0\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\3\5\0\18\4\0\0'\5\6\0&\4\5\4B\1\3\2\r\2\1\0X\2\vÄ\21\2\1\0)\3\0\0\1\3\2\0X\2\4Ä\21\2\1\0\21\3\0\0\0\2\3\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvim:\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0B\0\1\0029\0\3\0L\0\2\0\tmode\18nvim_get_mode\bapi\bvim0\0\0\3\2\1\0\t-\0\0\0B\0\1\2-\1\1\0008\1\0\1\14\0\1\0X\2\2Ä'\2\0\0L\2\2\0L\1\2\0\4¿\3¿\5I\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_x\rsections\vinsert\ntableR\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_c\22inactive_sections\vinsert\ntableR\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_x\22inactive_sections\vinsert\ntable\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b‚ñäÃ\5\0\0\a\0023\0z5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\3\1=\1\5\0-\1\0\0009\1\3\1=\1\6\0-\1\0\0009\1\3\1=\1\a\0-\1\0\0009\1\0\1=\1\b\0-\1\0\0009\1\0\1=\1\t\0-\1\0\0009\1\0\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\f\1=\1\16\0-\1\0\0009\1\f\1=\1\17\0-\1\0\0009\1\f\1=\1\18\0-\1\0\0009\1\19\1=\1\20\0-\1\0\0009\1\19\1=\1\21\0-\1\0\0009\1\19\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0-\1\0\0009\1\0\1=\1\28\0-\1\0\0009\1\0\1=\1\29\0-\1\0\0009\1\0\1=\1\30\0-\1\0\0009\1\0\1=\1\31\0-\1\0\0009\1\0\1=\1 \0-\1\0\0009\1!\1=\1\"\0-\1\0\0009\1!\1=\1#\0-\1\0\0009\1\0\1=\1$\0-\1\0\0009\1%\1=\1&\0-\1\0\0009\1%\1=\1'\0-\1\0\0009\1%\1=\1(\0-\1\0\0009\1\3\1=\1)\0-\1\0\0009\1\3\1=\1*\0006\1+\0009\1,\0019\1-\1'\3.\0006\4+\0009\4/\0049\0040\4B\4\1\0028\4\4\0'\0051\0-\6\0\0009\0062\6&\3\6\3B\1\2\1-\1\1\0D\1\1\0\1¿\5¿\abg\f guibg=\tmode\afn$hi! LualineMode gui=bold guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\6c\fmagenta\bRvx\bRvc\aRv\aRx\aRc\6R\aix\aic\6i\ngreen\6\19\6S\6s\vorange\a\22s\6\22\aVs\6V\avs\6v\tblue\ant\bniV\bniR\bniI\bno\22\bnoV\bnov\ano\bred\6n\1\0\0\vviolet\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=≥\3\0\0\14\0\21\2B'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\0026\2\1\0009\2\5\0029\2\6\2B\2\1\0026\3\a\0\18\5\2\0B\3\2\2\v\3\0\0X\3\1ÄL\0\2\0'\3\b\0006\4\t\0\18\6\2\0B\4\2\4X\a\24Ä9\t\n\b9\t\v\t\15\0\t\0X\n\20Ä6\n\1\0009\n\f\n9\n\r\n\18\f\t\0\18\r\1\0B\n\3\2\b\n\0\0X\n\fÄ9\n\14\b6\v\1\0009\v\f\v9\v\15\vB\v\1\0028\n\v\n\n\n\0\0X\n\4Ä\18\n\3\0009\v\16\b'\f\17\0&\3\f\nE\a\3\3R\aÊ6\4\18\0009\4\19\4\18\6\3\0B\4\2\2)\5\0\0\1\5\4\0X\4\nÄ6\4\18\0009\4\20\4\18\6\3\0)\a\1\0006\b\18\0009\b\19\b\18\n\3\0B\b\2\2\23\b\1\bD\4\4\0L\0\2\0\bsub\blen\vstring\6 \tname\nbufnr\21attached_buffers\nindex\afn\14filetypes\vconfig\vipairs\5\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\18No Active Lsp˛ˇˇˇ\31\2\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b‚ñäÖ\19\1\0\17\0p\0Â\0016\0\0\0'\2\1\0B\0\2\0025\1\2\0005\2\4\0003\3\3\0=\3\5\0023\3\6\0=\3\a\0023\3\b\0=\3\t\0025\3\n\0003\4\v\0003\5\f\0005\6\25\0005\a\r\0005\b\19\0005\t\17\0005\n\15\0009\v\14\1=\v\14\n9\v\16\1=\v\16\n=\n\18\t=\t\20\b5\t\22\0005\n\21\0009\v\14\1=\v\14\n9\v\16\1=\v\16\n=\n\18\t=\t\23\b=\b\24\a=\a\26\0065\a\27\0004\b\0\0=\b\28\a4\b\0\0=\b\29\a4\b\0\0=\b\30\a4\b\0\0=\b\31\a4\b\0\0=\b \a4\b\0\0=\b!\a=\a\"\0065\a#\0004\b\0\0=\b\28\a4\b\0\0=\b$\a4\b\0\0=\b\30\a4\b\0\0=\b\31\a4\b\0\0=\b \a4\b\0\0=\b!\a=\a%\0063\a&\0003\b'\0003\t(\0003\n)\0\18\v\a\0005\r-\0003\14*\0>\14\1\r5\14,\0009\15+\1=\15\14\14=\14.\r5\14/\0=\0140\rB\v\2\1\18\v\a\0005\r2\0003\0141\0>\14\1\r5\0143\0=\0140\rB\v\2\1\18\v\a\0005\r4\0009\14\5\2=\0145\rB\v\2\1\18\v\a\0005\r6\0009\14\5\2=\0145\r5\0148\0009\0157\1=\15\14\14=\14.\rB\v\2\1\18\v\a\0005\r9\0005\14;\0009\15:\1=\15\14\14=\14.\rB\v\2\1\18\v\a\0005\r<\0005\14=\0=\14>\r5\14A\0005\15@\0009\16?\1=\16\14\15=\15B\0145\15D\0009\16C\1=\16\14\15=\15E\0145\15G\0009\16F\1=\16\14\15=\15H\14=\14I\r9\14\a\2=\0145\rB\v\2\1\18\v\a\0004\r\3\0003\14J\0>\14\1\rB\v\2\1\18\v\a\0005\rL\0003\14K\0>\14\1\r5\14N\0009\15M\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\rO\0005\14P\0=\14Q\r5\14R\0=\14>\r5\14T\0005\15S\0009\16F\1=\16\14\15=\15U\0145\15W\0009\16V\1=\16\14\15=\15X\0145\15Y\0009\16M\1=\16\14\15=\15Z\14=\14[\rB\v\2\1\18\v\b\0005\r\\\0006\14]\0009\14^\14=\14_\r9\14\a\2=\0145\r5\14`\0009\15?\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\ra\0006\14]\0009\14^\14=\14_\r5\14b\0009\15?\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\rc\0B\v\2\1\18\v\b\0005\rd\0005\14e\0009\15\14\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\rh\0003\14f\0>\14\1\r5\14g\0009\15+\1=\15\14\14=\14.\r5\14i\0=\0140\rB\v\2\1\18\v\t\0005\rj\0009\14\5\2=\0145\r5\14k\0009\0157\1=\15\14\14=\14.\rB\v\2\1\18\v\n\0005\rl\0B\v\2\1\18\v\n\0005\rm\0005\14n\0009\15\14\1=\15\14\14=\14.\rB\v\2\0019\vo\0\18\r\6\0B\v\2\0012\0\0ÄK\0\1\0\nsetup\1\0\1\bgui\tbold\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\1\bgui\tbold\1\2\0\0\rfilename\1\0\2\nright\3\0\tleft\3\1\1\0\0\1\0\0\0\1\0\1\bgui\tbold\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\1\bgui\tbold\1\2\1\0\15fileformat\18icons_enabled\1\1\0\1\bgui\tbold\bfmt\nupper\vstring\1\2\0\0\15o:encoding\22diagnostics_color\15color_info\1\0\0\15color_warn\1\0\0\vyellow\16color_error\1\0\0\1\0\0\1\0\3\tinfo\tÔÅ™ \twarn\tÔÅ± \nerror\tÔÅó \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\1\bgui\tbold\tcyan\1\0\1\ticon\rÔÇÖ LSP:\0\0\15diff_color\fremoved\1\0\0\bred\rmodified\1\0\0\vorange\nadded\1\0\0\1\0\0\ngreen\fsymbols\1\0\3\rmodified\tÔßâ \nadded\tÔÉæ \fremoved\tÔÖÜ \1\2\0\0\tdiff\1\0\1\bgui\tbold\vviolet\1\2\1\0\vbranch\ticon\bÔëø\1\0\1\bgui\tbold\fmagenta\1\2\0\0\rfilename\tcond\1\2\0\0\rfilesize\1\0\1\nright\3\1\1\0\1\ncolor\16LualineMode\0\fpadding\1\0\2\nright\3\1\tleft\3\0\ncolor\1\0\0\1\0\0\tblue\0\0\0\0\0\22inactive_sections\14lualine_v\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\1\0\0\afg\1\0\2\25component_separators\5\23section_separators\5\0\0\1\0#\a\22s\fV-BLOCK\6s\vSELECT\ar?\fCONFIRM\6R\fREPLACE\arm\tMORE\ace\14EX-NORMAL\6v\vVISUAL\acv\15EX-COMMAND\bRvx\14V-REPLACE\bRvc\14V-REPLACE\6i\vINSERT\aRv\14V-REPLACE\aRx\fREPLACE\aRc\fREPLACE\aix\vI-COMP\6\19\fS-BLOCK\6S\vS-LINE\6r\fREPLACE\6\22\fV-BLOCK\aVs\vV-LINE\6V\vV-LINE\avs\vVISUAL\ant\vNORMAL\bniV\vNORMAL\bniR\vNORMAL\bniI\vNORMAL\bno\22\14O-PENDING\bnoV\14O-PENDING\bnov\14O-PENDING\ano\14O-PENDING\6n\vNORMAL\6c\fCOMMAND\6t\rTERMINAL\6!\nSHELL\aic\vI-COMP\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\1\0\v\ngreen\f#98be65\abg\f#202328\rdarkblue\f#081633\tblue\f#51afef\tcyan\f#008080\vyellow\f#ECBE7B\bred\f#ec5f67\afg\f#bbc2cf\fmagenta\f#c678dd\vviolet\f#a9a1e1\vorange\f#FF8800\flualine\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["marks.nvim"] = {
    config = { "\27LJ\2\nÏ\2\0\0\4\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0024\3\0\0=\3\n\2B\0\2\1K\0\1\0\rmappings\23excluded_filetypes\1\r\0\0\17null-ls-info\20TelescopePrompt\vrnvimr\15toggleterm\rdap-repl\14dap-float\tTerm\flazygit\flspinfo\thelp\bzsh\5\18sign_priority\1\0\4\fbuiltin\3\b\nupper\3\15\nlower\3\n\rbookmark\3\20\18builtin_marks\1\5\0\0\6.\6<\6>\6^\1\0\4\21refresh_interval\3˙\1\22force_write_shada\1\vcyclic\2\21default_mappings\2\nsetup\nmarks\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/marks.nvim",
    url = "https://github.com/chentau/marks.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\nr\0\1\5\0\a\0\r9\1\1\0\18\3\1\0009\1\2\1'\4\3\0B\1\3\2\15\0\1\0X\2\4Ä6\1\4\0009\1\5\0019\1\0\0019\1\6\1=\1\0\0K\0\1\0\tINFO\15diagnostic\bvim\17Unknown word\tfind\fmessage\rseverityÌ\2\1\0\t\0\21\0*6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\19\0004\4\b\0009\5\3\0009\5\4\0059\5\5\5>\5\1\0049\5\3\0009\5\6\0059\5\a\0059\5\b\0055\a\n\0003\b\t\0=\b\v\aB\5\2\2>\5\2\0049\5\3\0009\5\f\0059\5\r\5>\5\3\0049\5\3\0009\5\f\0059\5\14\5>\5\4\0049\5\3\0009\5\f\0059\5\15\5>\5\5\0049\5\3\0009\5\f\0059\5\16\5>\5\6\0049\5\3\0009\5\17\0059\5\18\5>\5\a\4=\4\20\3B\1\2\1K\0\1\0\fsources\1\0\0\15dictionary\nhover\14stylelint\14sqlformat\rprettier\21nginx_beautifier\15formatting\28diagnostics_postprocess\1\0\0\0\twith\vcspell\16diagnostics\rgitsigns\17code_actions\rbuiltins\nsetup\fnull-ls\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n}\0\4\14\0\a\0\21'\4\0\0006\5\1\0\18\a\2\0B\5\2\4H\b\rÄ\a\b\2\0X\n\2Ä'\n\3\0X\v\5Ä\a\b\4\0X\n\2Ä'\n\5\0X\v\1Ä'\n\6\0\18\v\4\0\18\f\n\0\18\r\t\0&\4\r\vF\b\3\3R\bÒL\4\2\0\bÔÅ™\bÔÅ±\fwarning\bÔÅó\nerror\npairs\6 £\2\1\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0003\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\3=\3\r\2B\0\2\1K\0\1\0\15highlights\23indicator_selected\1\0\1\nguifg\f#51afef\tfill\1\0\0\1\0\1\nguibg\f#202328\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\16diagnostics\rnvim_lsp\28show_buffer_close_icons\1\20show_close_icon\1\22show_buffer_icons\2\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\np\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÂ\1\0\1\5\3\b\1 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\22Ä6\1\2\0009\1\3\0019\1\4\1)\3\1\0B\1\2\2\t\1\0\0X\1\5Ä-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\a\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\2¿\3¿\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2®\1\0\0\4\2\a\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\vÄ6\0\2\0009\0\3\0009\0\4\0)\2ˇˇB\0\2\2\t\0\0\0X\0\4Ä-\0\1\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\0¿\2¿\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2ª\3\0\2\a\1\15\0!6\2\0\0009\2\1\0029\4\2\1B\2\2\2-\3\0\0\1\3\2\0X\2\tÄ6\2\0\0009\2\3\0029\4\2\1)\5\1\0-\6\0\0B\2\4\2'\3\4\0&\2\3\2=\2\2\0016\2\6\0'\4\a\0B\2\2\0029\2\b\0029\2\t\0029\3\5\0018\2\3\2'\3\n\0009\4\5\1&\2\4\2=\2\5\0015\2\f\0009\3\r\0009\3\14\0038\2\3\2=\2\v\1L\1\2\0\1¿\tname\vsource\1\0\v\rnvim_lua\n[Lua]\rnvim_lsp\n[LSP]\26vim-dadbod-completion\r[Dadbod]\16cmp_tabnine\14[Tabnine]\18latex_symbols\f[Latex]\tlook\v[Look]\vbuffer\r[Buffer]\28nvim_lsp_signature_help\16[Signature]\nvsnip\f[VSnip]\tpath\v[Path]\15treesitter\17[Treesitter]\tmenu\6 \fdefault\fpresets\flspkind\frequire\tkind\bÔõó\bsub\tabbr\blen\vstring_\0\0\2\1\3\0\r-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\3Ä-\0\0\0009\0\2\0B\0\1\1K\0\1\0\0¿\rcomplete\21select_next_item\fvisible_\0\0\2\1\3\0\r-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\3Ä-\0\0\0009\0\2\0B\0\1\1K\0\1\0\0¿\rcomplete\21select_prev_item\fvisible_\0\0\2\1\3\0\r-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\3Ä-\0\0\0009\0\2\0B\0\1\1K\0\1\0\0¿\rcomplete\21select_next_item\fvisible_\0\0\2\1\3\0\r-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\3Ä-\0\0\0009\0\2\0B\0\1\1K\0\1\0\0¿\rcomplete\21select_prev_item\fvisibleﬂ\17\1\0\18\0o\1Æ\0026\0\0\0'\2\1\0B\0\2\2)\0012\0003\2\2\0003\3\3\0009\4\4\0005\6\6\0005\a\5\0=\a\a\0065\a\t\0005\b\b\0=\b\n\a4\b\0\0=\b\a\a=\a\v\0065\a\f\0=\a\r\0065\a\15\0003\b\14\0=\b\16\a=\a\17\0069\a\18\0009\a\19\a9\a\20\a5\t\27\0009\n\18\0009\f\18\0009\f\21\f5\14\24\0009\15\22\0009\15\23\15=\15\25\14B\f\2\0025\r\26\0B\n\3\2=\n\28\t9\n\18\0009\f\18\0009\f\29\f5\14\30\0009\15\22\0009\15\23\15=\15\25\14B\f\2\0025\r\31\0B\n\3\2=\n \t9\n\18\0009\f\18\0009\f!\f)\14¸ˇB\f\2\0025\r\"\0B\n\3\2=\n#\t9\n\18\0009\f\18\0009\f!\f)\14\4\0B\f\2\0025\r$\0B\n\3\2=\n%\t9\n\18\0009\f\18\0009\f&\fB\f\1\0025\r'\0B\n\3\2=\n(\t9\n)\0009\n*\n=\n+\t9\n\18\0005\f-\0009\r\18\0009\r,\rB\r\1\2=\r.\f9\r\18\0009\r/\rB\r\1\2=\r0\fB\n\2\2=\n1\t9\n\18\0005\f6\0009\r\18\0009\r2\r5\0155\0009\0163\0009\0164\16=\16\25\15B\r\2\2=\r.\f9\r\18\0009\r2\r5\0157\0B\r\2\2=\r0\fB\n\2\2=\n8\t9\n\18\0003\f9\0005\r:\0B\n\3\2=\n;\t9\n\18\0003\f<\0005\r=\0B\n\3\2=\n>\tB\a\2\2=\a\18\0064\a\b\0005\b?\0>\b\1\a5\b@\0>\b\2\a5\bA\0>\b\3\a5\bB\0>\b\4\a5\bC\0>\b\5\a5\bD\0005\tE\0=\tF\b>\b\6\a5\bG\0>\b\a\a=\aH\0065\aI\0003\bJ\0=\bK\a=\aL\6B\4\2\0016\4\0\0'\6M\0B\4\2\0029\5N\0\18\a\5\0009\5O\5'\bP\0009\tQ\0045\vS\0005\fR\0=\fT\vB\t\2\0A\5\2\0019\5U\0049\6U\4\21\6\6\0\22\6\0\6'\aV\0<\a\6\0059\5\4\0009\5W\5'\aX\0005\bZ\0005\tY\0=\t\a\b9\t\18\0009\t\19\t9\tW\t5\v[\0009\f\18\0009\f\21\fB\f\1\2=\f\28\v9\f\18\0009\f\29\fB\f\1\2=\f \v9\f\18\0009\f!\f)\14¸ˇB\f\2\2=\f#\v9\f\18\0009\f!\f)\14\4\0B\f\2\2=\f%\v9\f\18\0009\f&\fB\f\1\2=\f(\v9\f)\0009\f*\f=\f+\v9\f\18\0009\f/\fB\f\1\2=\f1\v9\f\18\0009\f2\fB\f\1\2=\f8\v9\f\18\0003\14\\\0005\15]\0B\f\3\2=\f;\v9\f\18\0003\14^\0B\f\2\2=\f>\vB\t\2\2=\t\18\b9\t)\0009\tH\t4\v\3\0005\f_\0>\f\1\v4\f\3\0005\r`\0>\r\1\fB\t\3\2=\tH\bB\5\3\0019\5\4\0009\5W\5'\aa\0005\bl\0009\t\18\0009\t\19\t9\tW\t5\ve\0009\f\18\0009\14\18\0009\14\21\0145\16c\0009\17\22\0009\17b\17=\17\25\16B\14\2\0025\15d\0B\f\3\2=\f\28\v9\f\18\0009\14\18\0009\14\29\0145\16f\0009\17\22\0009\17b\17=\17\25\16B\14\2\0025\15g\0B\f\3\2=\f \v9\f\18\0009\f!\f)\14¸ˇB\f\2\2=\f#\v9\f\18\0009\f!\f)\14\4\0B\f\2\2=\f%\v9\f\18\0009\f&\fB\f\1\2=\f(\v9\f)\0009\f*\f=\f+\v9\f\18\0009\f/\fB\f\1\2=\f1\v9\f\18\0009\f2\fB\f\1\2=\f8\v9\f\18\0003\14h\0005\15i\0B\f\3\2=\f;\v9\f\18\0003\14j\0005\15k\0B\f\3\2=\f>\vB\t\2\2=\t\18\b9\t)\0009\tH\t4\v\3\0005\fm\0>\f\1\v4\f\3\0005\rn\0>\r\1\fB\t\3\2=\tH\bB\5\3\0012\0\0ÄK\0\1\0\1\0\1\tname\vbuffer\1\0\1\tname\29nvim_lsp_document_symbol\1\0\0\1\3\0\0\6i\6c\0\1\3\0\0\6i\6c\0\1\3\0\0\6i\6c\1\0\0\1\0\0\1\3\0\0\6i\6c\1\0\0\vInsert\6/\1\0\1\tname\fcmdline\1\0\1\tname\tpath\0\1\3\0\0\6i\6c\0\1\0\0\1\0\0\1\0\1\17autocomplete\1\6:\fcmdline\vracket\tlisp\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\15formatting\vformat\0\1\0\1\15deprecated\2\fsources\1\0\1\tname\26vim-dadbod-completion\voption\1\0\2\17convert_case\2\tloud\2\1\0\3\tname\tlook\19max_item_count\3\5\19keyword_length\3\2\1\0\2\tname\tpath\19max_item_count\3\n\1\0\2\tname\vbuffer\19max_item_count\3\n\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\rnvim_lsp\1\0\2\tname\nvsnip\19max_item_count\3\n\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\1\0\0\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-p>\1\3\0\0\6i\6c\1\0\0\21select_prev_item\n<C-n>\1\0\0\1\3\0\0\6i\6c\rbehavior\1\0\0\vSelect\19SelectBehavior\21select_next_item\vinsert\vpreset\fmapping\fsnippet\vexpand\1\0\0\0\17experimental\1\0\1\15ghost_text\2\vwindow\18documentation\1\0\0\1\0\1\14max_width\3F\15completion\1\0\0\1\0\1\16completeopt\26menu,menuone,noinsert\nsetup\0\0\bcmp\frequire\2\0" },
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
    config = { "\27LJ\2\n@\0\0\3\0\5\1\a6\0\0\0009\0\1\0006\2\2\0009\2\3\0029\2\4\2\24\2\0\2D\0\2\0\nlines\6o\bvim\nfloor\tmath\1ÄÄÄˇ\3K\0\0\3\0\5\2\b6\0\0\0009\0\1\0006\2\2\0009\2\3\0029\2\4\2\24\2\0\2\23\2\1\2D\0\2\0\fcolumns\6o\bvim\nfloor\tmathµÊÃô\19ô≥¶ˇ\3\2“\2\1\0\b\0\14\0\0243\0\0\0003\1\1\0006\2\2\0'\4\3\0B\2\2\0029\2\4\0025\4\5\0\18\5\0\0B\5\1\2=\5\6\0046\5\a\0009\5\b\0059\5\t\5=\5\t\0045\5\n\0\18\6\1\0B\6\1\2=\6\v\5\18\6\0\0B\6\1\2=\6\f\5=\5\r\4B\2\2\1K\0\1\0\15float_opts\vheight\nwidth\1\0\0\nshell\6o\bvim\tsize\1\0\t\20start_in_insert\2\19shading_factor\3\3\20shade_terminals\1\17hide_numbers\1\17open_mapping\15<c-\\><c-\\>\18close_on_exit\2\14direction\15horizontal\22terminal_mappings\2\20insert_mappings\2\nsetup\15toggleterm\frequire\0\0\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua",
    url = "https://github.com/akinsho/nvim-toggleterm.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÉ\a\0\0\6\0&\0-6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0024\3\0\0=\3\b\0025\3\t\0004\4\0\0=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\19\0005\4\18\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0005\5\24\0=\5\25\4=\4\26\0035\4\27\0005\5\28\0=\5\25\4=\4\29\3=\3\30\0025\3\31\0=\3 \0025\3#\0005\4!\0005\5\"\0=\5\25\4=\4$\3=\3%\2B\0\2\1K\0\1\0\16textobjects\vselect\1\0\0\1\0\4\aac\17@class.outer\aic\17@class.inner\aif\20@function.inner\aaf\20@function.outer\1\0\2\14lookahead\2\venable\2\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\rrefactor\15navigation\1\0\5\24goto_previous_usage\n<a-#>\20goto_definition\bgnd\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\21list_definitions\bgnD\1\0\1\venable\2\17smart_rename\fkeymaps\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\fmatchup\1\0\1\venable\2\14autopairs\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\19ignore_install\fautotag\1\0\1\21ensure_installed\ball\14filetypes\1\b\0\0\thtml\15javascript\20javascriptreact\20typescriptreact\vsvelte\bvue\bxml\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    config = { "\27LJ\2\n£\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\2B\0\2\1K\0\1\0\rpatterns\fdefault\1\0\0\1\4\0\0\nclass\rfunction\vmethod\1\0\3\14max_lines\3\1\venable\2\rthrottle\2\nsetup\23treesitter-context\frequire\0" },
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
    config = { "\27LJ\2\nÀ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\rpatterns\1\b\0\0\t.git\v_darcs\b.hg\t.bzr\t.svn\rMakefile\17package.json\22detection_methods\1\0\2\16show_hidden\2\17silent_chdir\1\1\3\0\0\blsp\fpattern\nsetup\17project_nvim\frequire\0" },
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
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nE\0\0\4\1\4\0\b-\0\0\0009\0\0\0006\2\1\0009\2\2\0029\2\3\2B\2\1\0A\0\0\1K\0\1\0\2¿\nbufnr\afn\bvim\19toggle_previewE\0\0\4\1\4\0\b-\0\0\0009\0\0\0006\2\1\0009\2\2\0029\2\3\2B\2\1\0A\0\0\1K\0\1\0\2¿\nbufnr\afn\bvim\19toggle_preview·\t\1\0\r\0009\1k6\0\0\0009\0\1\0'\2\2\0B\0\2\2+\1\0\0\15\0\0\0X\2\14Ä4\1\0\0006\2\3\0009\2\4\2\18\4\0\0'\5\5\0B\2\3\4X\5\5Ä6\6\6\0009\6\a\6\18\b\1\0\18\t\5\0B\6\3\1E\5\3\2R\5˘6\2\b\0'\4\t\0B\2\2\0026\3\b\0'\5\n\0B\3\2\0029\3\v\0035\5\31\0005\6\f\0\f\a\1\0X\a\1Ä+\a\0\0=\a\r\0065\a\14\0=\a\15\0065\a\17\0005\b\16\0=\b\18\a=\a\19\0065\a\23\0005\b\21\0003\t\20\0=\t\22\b=\b\24\a5\b\26\0003\t\25\0=\t\22\b=\b\27\a=\a\28\0065\a\29\0=\a\30\6=\6 \0055\6$\0005\a\"\0005\b!\0=\b#\a=\a%\6=\6&\0055\6(\0005\a'\0=\a)\0064\a\3\0006\b\b\0'\n*\0B\b\2\0029\b+\b5\n3\0005\v-\0005\f,\0=\f.\v5\f/\0=\f0\v5\f1\0=\f2\v=\v\15\nB\b\2\0?\b\0\0=\a4\6=\0065\5B\3\2\0016\3\b\0'\5\n\0B\3\2\0029\0036\3'\0057\0B\3\2\0016\3\b\0'\5\n\0B\3\2\0029\0036\3'\0058\0B\3\2\0016\3\b\0'\5\n\0B\3\2\0029\0036\3'\5)\0B\3\2\0016\3\b\0'\5\n\0B\3\2\0029\0036\3'\0054\0B\3\2\0012\0\0ÄK\0\1\0\rprojects\bdap\19load_extension\15extensions\14ui-select\1\0\0\fpreview\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚îå\b‚îê\b‚îò\b‚îî\fresults\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚îú\b‚î§\b‚îò\b‚îî\vprompt\1\0\0\1\t\0\0\b‚îÄ\b‚îÇ\6 \b‚îÇ\b‚îå\b‚îê\b‚îÇ\b‚îÇ\15get_cursor\21telescope.themes\bfzf\1\0\0\1\0\4\28override_generic_sorter\2\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\fpickers\15find_files\1\0\0\17find_command\1\0\0\1\5\0\0\afd\v--type\6f\23--strip-cwd-prefix\rdefaults\1\0\0\22vimgrep_arguments\1\t\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\v--trim\rmappings\6n\1\0\0\0\6i\1\0\0\n<C-o>\1\0\0\0\18layout_config\15horizontal\1\0\0\1\0\1\20prompt_position\btop\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚îå\b‚îê\b‚îò\b‚îî\25file_ignore_patterns\1\0\2\21sorting_strategy\14ascending\17wrap_results\1\nsetup\14telescope\29telescope.actions.layout\frequire\vinsert\ntable\b%S+\vgmatch\vstring#TELESCOPE_FILE_IGNORE_PATTERNS\vgetenv\aos\3ÄÄ¿ô\4\0" },
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
  undotree = {
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
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
    config = { "\27LJ\2\næ\6\0\0\6\0,\00086\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\1\6\0005\3\22\0005\4\a\0005\5\b\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\0045\5\14\0=\5\15\0045\5\16\0=\5\17\0045\5\18\0=\5\19\0045\5\20\0=\5\21\4=\4\23\0035\4\24\0=\4\25\0035\4\26\0005\5\27\0=\5\28\4=\4\29\0035\4\30\0=\4\21\0035\4\31\0=\4 \0035\4!\0=\4\v\0035\4\"\0=\4#\0035\4$\0=\4\19\0035\4%\0=\4\15\0035\4&\0=\4\17\0035\4'\0=\4(\0035\4)\0=\4*\0035\4+\0B\1\3\1K\0\1\0\1\0\1\vprefix\r<leader>\6g\1\0\1\tname\15Git Action\6p\1\0\1\tname\27Paste System Clipboard\1\0\1\tname\14Workspace\1\0\1\tname\14Translate\1\0\1\tname\18Source Config\6r\1\0\1\tname\27Ranger & Rename & Rest\1\0\1\tname\22Markdown & Format\6x\1\0\1\tname\25Close Current Buffer\1\0\1\tname\15DAP Action\6c\6j\1\0\1\tname\21Java Code Action\1\0\1\tname\16Code Action\6b\1\0\1\tname\19Buffer Operate\6f\1\0\0\6d\1\0\1\tname\25DAP Telescope Action\6s\1\0\1\tname\fSpectre\6w\1\0\1\tname\27Workspace & LSP Action\6t\1\0\1\tname\27TreeSitter & FileTypes\6h\1\0\1\tname\31History & Help & Highlight\6m\1\0\1\tname\tMark\6i\1\0\1\tname\23BuildIn & Reloader\1\0\1\tname\22Find By Telescope\rregister\fplugins\1\0\0\1\0\1\14registers\1\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/hewenjin/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-treesitter-context
time([[Config for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\n£\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\2B\0\2\1K\0\1\0\rpatterns\fdefault\1\0\0\1\4\0\0\nclass\rfunction\vmethod\1\0\3\14max_lines\3\1\venable\2\rthrottle\2\nsetup\23treesitter-context\frequire\0", "config", "nvim-treesitter-context")
time([[Config for nvim-treesitter-context]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nE\0\0\4\1\4\0\b-\0\0\0009\0\0\0006\2\1\0009\2\2\0029\2\3\2B\2\1\0A\0\0\1K\0\1\0\2¿\nbufnr\afn\bvim\19toggle_previewE\0\0\4\1\4\0\b-\0\0\0009\0\0\0006\2\1\0009\2\2\0029\2\3\2B\2\1\0A\0\0\1K\0\1\0\2¿\nbufnr\afn\bvim\19toggle_preview·\t\1\0\r\0009\1k6\0\0\0009\0\1\0'\2\2\0B\0\2\2+\1\0\0\15\0\0\0X\2\14Ä4\1\0\0006\2\3\0009\2\4\2\18\4\0\0'\5\5\0B\2\3\4X\5\5Ä6\6\6\0009\6\a\6\18\b\1\0\18\t\5\0B\6\3\1E\5\3\2R\5˘6\2\b\0'\4\t\0B\2\2\0026\3\b\0'\5\n\0B\3\2\0029\3\v\0035\5\31\0005\6\f\0\f\a\1\0X\a\1Ä+\a\0\0=\a\r\0065\a\14\0=\a\15\0065\a\17\0005\b\16\0=\b\18\a=\a\19\0065\a\23\0005\b\21\0003\t\20\0=\t\22\b=\b\24\a5\b\26\0003\t\25\0=\t\22\b=\b\27\a=\a\28\0065\a\29\0=\a\30\6=\6 \0055\6$\0005\a\"\0005\b!\0=\b#\a=\a%\6=\6&\0055\6(\0005\a'\0=\a)\0064\a\3\0006\b\b\0'\n*\0B\b\2\0029\b+\b5\n3\0005\v-\0005\f,\0=\f.\v5\f/\0=\f0\v5\f1\0=\f2\v=\v\15\nB\b\2\0?\b\0\0=\a4\6=\0065\5B\3\2\0016\3\b\0'\5\n\0B\3\2\0029\0036\3'\0057\0B\3\2\0016\3\b\0'\5\n\0B\3\2\0029\0036\3'\0058\0B\3\2\0016\3\b\0'\5\n\0B\3\2\0029\0036\3'\5)\0B\3\2\0016\3\b\0'\5\n\0B\3\2\0029\0036\3'\0054\0B\3\2\0012\0\0ÄK\0\1\0\rprojects\bdap\19load_extension\15extensions\14ui-select\1\0\0\fpreview\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚îå\b‚îê\b‚îò\b‚îî\fresults\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚îú\b‚î§\b‚îò\b‚îî\vprompt\1\0\0\1\t\0\0\b‚îÄ\b‚îÇ\6 \b‚îÇ\b‚îå\b‚îê\b‚îÇ\b‚îÇ\15get_cursor\21telescope.themes\bfzf\1\0\0\1\0\4\28override_generic_sorter\2\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\fpickers\15find_files\1\0\0\17find_command\1\0\0\1\5\0\0\afd\v--type\6f\23--strip-cwd-prefix\rdefaults\1\0\0\22vimgrep_arguments\1\t\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\v--trim\rmappings\6n\1\0\0\0\6i\1\0\0\n<C-o>\1\0\0\0\18layout_config\15horizontal\1\0\0\1\0\1\20prompt_position\btop\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚îå\b‚îê\b‚îò\b‚îî\25file_ignore_patterns\1\0\2\21sorting_strategy\14ascending\17wrap_results\1\nsetup\14telescope\29telescope.actions.layout\frequire\vinsert\ntable\b%S+\vgmatch\vstring#TELESCOPE_FILE_IGNORE_PATTERNS\vgetenv\aos\3ÄÄ¿ô\4\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\næ\6\0\0\6\0,\00086\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\1\6\0005\3\22\0005\4\a\0005\5\b\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\0045\5\14\0=\5\15\0045\5\16\0=\5\17\0045\5\18\0=\5\19\0045\5\20\0=\5\21\4=\4\23\0035\4\24\0=\4\25\0035\4\26\0005\5\27\0=\5\28\4=\4\29\0035\4\30\0=\4\21\0035\4\31\0=\4 \0035\4!\0=\4\v\0035\4\"\0=\4#\0035\4$\0=\4\19\0035\4%\0=\4\15\0035\4&\0=\4\17\0035\4'\0=\4(\0035\4)\0=\4*\0035\4+\0B\1\3\1K\0\1\0\1\0\1\vprefix\r<leader>\6g\1\0\1\tname\15Git Action\6p\1\0\1\tname\27Paste System Clipboard\1\0\1\tname\14Workspace\1\0\1\tname\14Translate\1\0\1\tname\18Source Config\6r\1\0\1\tname\27Ranger & Rename & Rest\1\0\1\tname\22Markdown & Format\6x\1\0\1\tname\25Close Current Buffer\1\0\1\tname\15DAP Action\6c\6j\1\0\1\tname\21Java Code Action\1\0\1\tname\16Code Action\6b\1\0\1\tname\19Buffer Operate\6f\1\0\0\6d\1\0\1\tname\25DAP Telescope Action\6s\1\0\1\tname\fSpectre\6w\1\0\1\tname\27Workspace & LSP Action\6t\1\0\1\tname\27TreeSitter & FileTypes\6h\1\0\1\tname\31History & Help & Highlight\6m\1\0\1\tname\tMark\6i\1\0\1\tname\23BuildIn & Reloader\1\0\1\tname\22Find By Telescope\rregister\fplugins\1\0\0\1\0\1\14registers\1\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n\\\0\0\5\0\5\1\0156\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvimñ\1\0\0\6\0\a\0\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\3\5\0\18\4\0\0'\5\6\0&\4\5\4B\1\3\2\r\2\1\0X\2\vÄ\21\2\1\0)\3\0\0\1\3\2\0X\2\4Ä\21\2\1\0\21\3\0\0\0\2\3\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvim:\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0B\0\1\0029\0\3\0L\0\2\0\tmode\18nvim_get_mode\bapi\bvim0\0\0\3\2\1\0\t-\0\0\0B\0\1\2-\1\1\0008\1\0\1\14\0\1\0X\2\2Ä'\2\0\0L\2\2\0L\1\2\0\4¿\3¿\5I\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_x\rsections\vinsert\ntableR\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_c\22inactive_sections\vinsert\ntableR\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\6¿\14lualine_x\22inactive_sections\vinsert\ntable\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b‚ñäÃ\5\0\0\a\0023\0z5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\3\1=\1\5\0-\1\0\0009\1\3\1=\1\6\0-\1\0\0009\1\3\1=\1\a\0-\1\0\0009\1\0\1=\1\b\0-\1\0\0009\1\0\1=\1\t\0-\1\0\0009\1\0\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\f\1=\1\16\0-\1\0\0009\1\f\1=\1\17\0-\1\0\0009\1\f\1=\1\18\0-\1\0\0009\1\19\1=\1\20\0-\1\0\0009\1\19\1=\1\21\0-\1\0\0009\1\19\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0-\1\0\0009\1\0\1=\1\28\0-\1\0\0009\1\0\1=\1\29\0-\1\0\0009\1\0\1=\1\30\0-\1\0\0009\1\0\1=\1\31\0-\1\0\0009\1\0\1=\1 \0-\1\0\0009\1!\1=\1\"\0-\1\0\0009\1!\1=\1#\0-\1\0\0009\1\0\1=\1$\0-\1\0\0009\1%\1=\1&\0-\1\0\0009\1%\1=\1'\0-\1\0\0009\1%\1=\1(\0-\1\0\0009\1\3\1=\1)\0-\1\0\0009\1\3\1=\1*\0006\1+\0009\1,\0019\1-\1'\3.\0006\4+\0009\4/\0049\0040\4B\4\1\0028\4\4\0'\0051\0-\6\0\0009\0062\6&\3\6\3B\1\2\1-\1\1\0D\1\1\0\1¿\5¿\abg\f guibg=\tmode\afn$hi! LualineMode gui=bold guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\6c\fmagenta\bRvx\bRvc\aRv\aRx\aRc\6R\aix\aic\6i\ngreen\6\19\6S\6s\vorange\a\22s\6\22\aVs\6V\avs\6v\tblue\ant\bniV\bniR\bniI\bno\22\bnoV\bnov\ano\bred\6n\1\0\0\vviolet\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=≥\3\0\0\14\0\21\2B'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\0026\2\1\0009\2\5\0029\2\6\2B\2\1\0026\3\a\0\18\5\2\0B\3\2\2\v\3\0\0X\3\1ÄL\0\2\0'\3\b\0006\4\t\0\18\6\2\0B\4\2\4X\a\24Ä9\t\n\b9\t\v\t\15\0\t\0X\n\20Ä6\n\1\0009\n\f\n9\n\r\n\18\f\t\0\18\r\1\0B\n\3\2\b\n\0\0X\n\fÄ9\n\14\b6\v\1\0009\v\f\v9\v\15\vB\v\1\0028\n\v\n\n\n\0\0X\n\4Ä\18\n\3\0009\v\16\b'\f\17\0&\3\f\nE\a\3\3R\aÊ6\4\18\0009\4\19\4\18\6\3\0B\4\2\2)\5\0\0\1\5\4\0X\4\nÄ6\4\18\0009\4\20\4\18\6\3\0)\a\1\0006\b\18\0009\b\19\b\18\n\3\0B\b\2\2\23\b\1\bD\4\4\0L\0\2\0\bsub\blen\vstring\6 \tname\nbufnr\21attached_buffers\nindex\afn\14filetypes\vconfig\vipairs\5\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\18No Active Lsp˛ˇˇˇ\31\2\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b‚ñäÖ\19\1\0\17\0p\0Â\0016\0\0\0'\2\1\0B\0\2\0025\1\2\0005\2\4\0003\3\3\0=\3\5\0023\3\6\0=\3\a\0023\3\b\0=\3\t\0025\3\n\0003\4\v\0003\5\f\0005\6\25\0005\a\r\0005\b\19\0005\t\17\0005\n\15\0009\v\14\1=\v\14\n9\v\16\1=\v\16\n=\n\18\t=\t\20\b5\t\22\0005\n\21\0009\v\14\1=\v\14\n9\v\16\1=\v\16\n=\n\18\t=\t\23\b=\b\24\a=\a\26\0065\a\27\0004\b\0\0=\b\28\a4\b\0\0=\b\29\a4\b\0\0=\b\30\a4\b\0\0=\b\31\a4\b\0\0=\b \a4\b\0\0=\b!\a=\a\"\0065\a#\0004\b\0\0=\b\28\a4\b\0\0=\b$\a4\b\0\0=\b\30\a4\b\0\0=\b\31\a4\b\0\0=\b \a4\b\0\0=\b!\a=\a%\0063\a&\0003\b'\0003\t(\0003\n)\0\18\v\a\0005\r-\0003\14*\0>\14\1\r5\14,\0009\15+\1=\15\14\14=\14.\r5\14/\0=\0140\rB\v\2\1\18\v\a\0005\r2\0003\0141\0>\14\1\r5\0143\0=\0140\rB\v\2\1\18\v\a\0005\r4\0009\14\5\2=\0145\rB\v\2\1\18\v\a\0005\r6\0009\14\5\2=\0145\r5\0148\0009\0157\1=\15\14\14=\14.\rB\v\2\1\18\v\a\0005\r9\0005\14;\0009\15:\1=\15\14\14=\14.\rB\v\2\1\18\v\a\0005\r<\0005\14=\0=\14>\r5\14A\0005\15@\0009\16?\1=\16\14\15=\15B\0145\15D\0009\16C\1=\16\14\15=\15E\0145\15G\0009\16F\1=\16\14\15=\15H\14=\14I\r9\14\a\2=\0145\rB\v\2\1\18\v\a\0004\r\3\0003\14J\0>\14\1\rB\v\2\1\18\v\a\0005\rL\0003\14K\0>\14\1\r5\14N\0009\15M\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\rO\0005\14P\0=\14Q\r5\14R\0=\14>\r5\14T\0005\15S\0009\16F\1=\16\14\15=\15U\0145\15W\0009\16V\1=\16\14\15=\15X\0145\15Y\0009\16M\1=\16\14\15=\15Z\14=\14[\rB\v\2\1\18\v\b\0005\r\\\0006\14]\0009\14^\14=\14_\r9\14\a\2=\0145\r5\14`\0009\15?\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\ra\0006\14]\0009\14^\14=\14_\r5\14b\0009\15?\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\rc\0B\v\2\1\18\v\b\0005\rd\0005\14e\0009\15\14\1=\15\14\14=\14.\rB\v\2\1\18\v\b\0005\rh\0003\14f\0>\14\1\r5\14g\0009\15+\1=\15\14\14=\14.\r5\14i\0=\0140\rB\v\2\1\18\v\t\0005\rj\0009\14\5\2=\0145\r5\14k\0009\0157\1=\15\14\14=\14.\rB\v\2\1\18\v\n\0005\rl\0B\v\2\1\18\v\n\0005\rm\0005\14n\0009\15\14\1=\15\14\14=\14.\rB\v\2\0019\vo\0\18\r\6\0B\v\2\0012\0\0ÄK\0\1\0\nsetup\1\0\1\bgui\tbold\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\1\bgui\tbold\1\2\0\0\rfilename\1\0\2\nright\3\0\tleft\3\1\1\0\0\1\0\0\0\1\0\1\bgui\tbold\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\1\bgui\tbold\1\2\1\0\15fileformat\18icons_enabled\1\1\0\1\bgui\tbold\bfmt\nupper\vstring\1\2\0\0\15o:encoding\22diagnostics_color\15color_info\1\0\0\15color_warn\1\0\0\vyellow\16color_error\1\0\0\1\0\0\1\0\3\tinfo\tÔÅ™ \twarn\tÔÅ± \nerror\tÔÅó \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\1\bgui\tbold\tcyan\1\0\1\ticon\rÔÇÖ LSP:\0\0\15diff_color\fremoved\1\0\0\bred\rmodified\1\0\0\vorange\nadded\1\0\0\1\0\0\ngreen\fsymbols\1\0\3\rmodified\tÔßâ \nadded\tÔÉæ \fremoved\tÔÖÜ \1\2\0\0\tdiff\1\0\1\bgui\tbold\vviolet\1\2\1\0\vbranch\ticon\bÔëø\1\0\1\bgui\tbold\fmagenta\1\2\0\0\rfilename\tcond\1\2\0\0\rfilesize\1\0\1\nright\3\1\1\0\1\ncolor\16LualineMode\0\fpadding\1\0\2\nright\3\1\tleft\3\0\ncolor\1\0\0\1\0\0\tblue\0\0\0\0\0\22inactive_sections\14lualine_v\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\1\0\0\afg\1\0\2\25component_separators\5\23section_separators\5\0\0\1\0#\a\22s\fV-BLOCK\6s\vSELECT\ar?\fCONFIRM\6R\fREPLACE\arm\tMORE\ace\14EX-NORMAL\6v\vVISUAL\acv\15EX-COMMAND\bRvx\14V-REPLACE\bRvc\14V-REPLACE\6i\vINSERT\aRv\14V-REPLACE\aRx\fREPLACE\aRc\fREPLACE\aix\vI-COMP\6\19\fS-BLOCK\6S\vS-LINE\6r\fREPLACE\6\22\fV-BLOCK\aVs\vV-LINE\6V\vV-LINE\avs\vVISUAL\ant\vNORMAL\bniV\vNORMAL\bniR\vNORMAL\bniI\vNORMAL\bno\22\14O-PENDING\bnoV\14O-PENDING\bnov\14O-PENDING\ano\14O-PENDING\6n\vNORMAL\6c\fCOMMAND\6t\rTERMINAL\6!\nSHELL\aic\vI-COMP\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\1\0\v\ngreen\f#98be65\abg\f#202328\rdarkblue\f#081633\tblue\f#51afef\tcyan\f#008080\vyellow\f#ECBE7B\bred\f#ec5f67\afg\f#bbc2cf\fmagenta\f#c678dd\vviolet\f#a9a1e1\vorange\f#FF8800\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: marks.nvim
time([[Config for marks.nvim]], true)
try_loadstring("\27LJ\2\nÏ\2\0\0\4\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0024\3\0\0=\3\n\2B\0\2\1K\0\1\0\rmappings\23excluded_filetypes\1\r\0\0\17null-ls-info\20TelescopePrompt\vrnvimr\15toggleterm\rdap-repl\14dap-float\tTerm\flazygit\flspinfo\thelp\bzsh\5\18sign_priority\1\0\4\fbuiltin\3\b\nupper\3\15\nlower\3\n\rbookmark\3\20\18builtin_marks\1\5\0\0\6.\6<\6>\6^\1\0\4\21refresh_interval\3˙\1\22force_write_shada\1\vcyclic\2\21default_mappings\2\nsetup\nmarks\frequire\0", "config", "marks.nvim")
time([[Config for marks.nvim]], false)
-- Config for: nvim-dap-virtual-text
time([[Config for nvim-dap-virtual-text]], true)
try_loadstring("\27LJ\2\nV\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\15all_frames\2\nsetup\26nvim-dap-virtual-text\frequire\0", "config", "nvim-dap-virtual-text")
time([[Config for nvim-dap-virtual-text]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\nr\0\1\5\0\a\0\r9\1\1\0\18\3\1\0009\1\2\1'\4\3\0B\1\3\2\15\0\1\0X\2\4Ä6\1\4\0009\1\5\0019\1\0\0019\1\6\1=\1\0\0K\0\1\0\tINFO\15diagnostic\bvim\17Unknown word\tfind\fmessage\rseverityÌ\2\1\0\t\0\21\0*6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\19\0004\4\b\0009\5\3\0009\5\4\0059\5\5\5>\5\1\0049\5\3\0009\5\6\0059\5\a\0059\5\b\0055\a\n\0003\b\t\0=\b\v\aB\5\2\2>\5\2\0049\5\3\0009\5\f\0059\5\r\5>\5\3\0049\5\3\0009\5\f\0059\5\14\5>\5\4\0049\5\3\0009\5\f\0059\5\15\5>\5\5\0049\5\3\0009\5\f\0059\5\16\5>\5\6\0049\5\3\0009\5\17\0059\5\18\5>\5\a\4=\4\20\3B\1\2\1K\0\1\0\fsources\1\0\0\15dictionary\nhover\14stylelint\14sqlformat\rprettier\21nginx_beautifier\15formatting\28diagnostics_postprocess\1\0\0\0\twith\vcspell\16diagnostics\rgitsigns\17code_actions\rbuiltins\nsetup\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\nÀ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\rpatterns\1\b\0\0\t.git\v_darcs\b.hg\t.bzr\t.svn\rMakefile\17package.json\22detection_methods\1\0\2\16show_hidden\2\17silent_chdir\1\1\3\0\0\blsp\fpattern\nsetup\17project_nvim\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: hop
time([[Config for hop]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\bhop\frequire\0", "config", "hop")
time([[Config for hop]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\n}\0\4\14\0\a\0\21'\4\0\0006\5\1\0\18\a\2\0B\5\2\4H\b\rÄ\a\b\2\0X\n\2Ä'\n\3\0X\v\5Ä\a\b\4\0X\n\2Ä'\n\5\0X\v\1Ä'\n\6\0\18\v\4\0\18\f\n\0\18\r\t\0&\4\r\vF\b\3\3R\bÒL\4\2\0\bÔÅ™\bÔÅ±\fwarning\bÔÅó\nerror\npairs\6 £\2\1\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0003\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\3=\3\r\2B\0\2\1K\0\1\0\15highlights\23indicator_selected\1\0\1\nguifg\f#51afef\tfill\1\0\0\1\0\1\nguibg\f#202328\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\16diagnostics\rnvim_lsp\28show_buffer_close_icons\1\20show_close_icon\1\22show_buffer_icons\2\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n]\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\23alpha.themes.theta\nsetup\nalpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: nvim-toggleterm.lua
time([[Config for nvim-toggleterm.lua]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\5\1\a6\0\0\0009\0\1\0006\2\2\0009\2\3\0029\2\4\2\24\2\0\2D\0\2\0\nlines\6o\bvim\nfloor\tmath\1ÄÄÄˇ\3K\0\0\3\0\5\2\b6\0\0\0009\0\1\0006\2\2\0009\2\3\0029\2\4\2\24\2\0\2\23\2\1\2D\0\2\0\fcolumns\6o\bvim\nfloor\tmathµÊÃô\19ô≥¶ˇ\3\2“\2\1\0\b\0\14\0\0243\0\0\0003\1\1\0006\2\2\0'\4\3\0B\2\2\0029\2\4\0025\4\5\0\18\5\0\0B\5\1\2=\5\6\0046\5\a\0009\5\b\0059\5\t\5=\5\t\0045\5\n\0\18\6\1\0B\6\1\2=\6\v\5\18\6\0\0B\6\1\2=\6\f\5=\5\r\4B\2\2\1K\0\1\0\15float_opts\vheight\nwidth\1\0\0\nshell\6o\bvim\tsize\1\0\t\20start_in_insert\2\19shading_factor\3\3\20shade_terminals\1\17hide_numbers\1\17open_mapping\15<c-\\><c-\\>\18close_on_exit\2\14direction\15horizontal\22terminal_mappings\2\20insert_mappings\2\nsetup\15toggleterm\frequire\0\0\0", "config", "nvim-toggleterm.lua")
time([[Config for nvim-toggleterm.lua]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n„\a\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0=\4\b\0035\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\fkeymaps\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\1\0\v\17n <leader>gp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17v <leader>gsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\18n <leader>gbl4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\17n <leader>gs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\fnoremap\2\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17v <leader>grT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\28current_line_blame_opts\1\0\1\ndelay\3Ù\3\1\0\1\23current_line_blame\2\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\np\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÂ\1\0\1\5\3\b\1 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\22Ä6\1\2\0009\1\3\0019\1\4\1)\3\1\0B\1\2\2\t\1\0\0X\1\5Ä-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\a\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\2¿\3¿\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2®\1\0\0\4\2\a\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\vÄ6\0\2\0009\0\3\0009\0\4\0)\2ˇˇB\0\2\2\t\0\0\0X\0\4Ä-\0\1\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\0¿\2¿\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2ª\3\0\2\a\1\15\0!6\2\0\0009\2\1\0029\4\2\1B\2\2\2-\3\0\0\1\3\2\0X\2\tÄ6\2\0\0009\2\3\0029\4\2\1)\5\1\0-\6\0\0B\2\4\2'\3\4\0&\2\3\2=\2\2\0016\2\6\0'\4\a\0B\2\2\0029\2\b\0029\2\t\0029\3\5\0018\2\3\2'\3\n\0009\4\5\1&\2\4\2=\2\5\0015\2\f\0009\3\r\0009\3\14\0038\2\3\2=\2\v\1L\1\2\0\1¿\tname\vsource\1\0\v\rnvim_lua\n[Lua]\rnvim_lsp\n[LSP]\26vim-dadbod-completion\r[Dadbod]\16cmp_tabnine\14[Tabnine]\18latex_symbols\f[Latex]\tlook\v[Look]\vbuffer\r[Buffer]\28nvim_lsp_signature_help\16[Signature]\nvsnip\f[VSnip]\tpath\v[Path]\15treesitter\17[Treesitter]\tmenu\6 \fdefault\fpresets\flspkind\frequire\tkind\bÔõó\bsub\tabbr\blen\vstring_\0\0\2\1\3\0\r-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\3Ä-\0\0\0009\0\2\0B\0\1\1K\0\1\0\0¿\rcomplete\21select_next_item\fvisible_\0\0\2\1\3\0\r-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\3Ä-\0\0\0009\0\2\0B\0\1\1K\0\1\0\0¿\rcomplete\21select_prev_item\fvisible_\0\0\2\1\3\0\r-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\3Ä-\0\0\0009\0\2\0B\0\1\1K\0\1\0\0¿\rcomplete\21select_next_item\fvisible_\0\0\2\1\3\0\r-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\3Ä-\0\0\0009\0\2\0B\0\1\1K\0\1\0\0¿\rcomplete\21select_prev_item\fvisibleﬂ\17\1\0\18\0o\1Æ\0026\0\0\0'\2\1\0B\0\2\2)\0012\0003\2\2\0003\3\3\0009\4\4\0005\6\6\0005\a\5\0=\a\a\0065\a\t\0005\b\b\0=\b\n\a4\b\0\0=\b\a\a=\a\v\0065\a\f\0=\a\r\0065\a\15\0003\b\14\0=\b\16\a=\a\17\0069\a\18\0009\a\19\a9\a\20\a5\t\27\0009\n\18\0009\f\18\0009\f\21\f5\14\24\0009\15\22\0009\15\23\15=\15\25\14B\f\2\0025\r\26\0B\n\3\2=\n\28\t9\n\18\0009\f\18\0009\f\29\f5\14\30\0009\15\22\0009\15\23\15=\15\25\14B\f\2\0025\r\31\0B\n\3\2=\n \t9\n\18\0009\f\18\0009\f!\f)\14¸ˇB\f\2\0025\r\"\0B\n\3\2=\n#\t9\n\18\0009\f\18\0009\f!\f)\14\4\0B\f\2\0025\r$\0B\n\3\2=\n%\t9\n\18\0009\f\18\0009\f&\fB\f\1\0025\r'\0B\n\3\2=\n(\t9\n)\0009\n*\n=\n+\t9\n\18\0005\f-\0009\r\18\0009\r,\rB\r\1\2=\r.\f9\r\18\0009\r/\rB\r\1\2=\r0\fB\n\2\2=\n1\t9\n\18\0005\f6\0009\r\18\0009\r2\r5\0155\0009\0163\0009\0164\16=\16\25\15B\r\2\2=\r.\f9\r\18\0009\r2\r5\0157\0B\r\2\2=\r0\fB\n\2\2=\n8\t9\n\18\0003\f9\0005\r:\0B\n\3\2=\n;\t9\n\18\0003\f<\0005\r=\0B\n\3\2=\n>\tB\a\2\2=\a\18\0064\a\b\0005\b?\0>\b\1\a5\b@\0>\b\2\a5\bA\0>\b\3\a5\bB\0>\b\4\a5\bC\0>\b\5\a5\bD\0005\tE\0=\tF\b>\b\6\a5\bG\0>\b\a\a=\aH\0065\aI\0003\bJ\0=\bK\a=\aL\6B\4\2\0016\4\0\0'\6M\0B\4\2\0029\5N\0\18\a\5\0009\5O\5'\bP\0009\tQ\0045\vS\0005\fR\0=\fT\vB\t\2\0A\5\2\0019\5U\0049\6U\4\21\6\6\0\22\6\0\6'\aV\0<\a\6\0059\5\4\0009\5W\5'\aX\0005\bZ\0005\tY\0=\t\a\b9\t\18\0009\t\19\t9\tW\t5\v[\0009\f\18\0009\f\21\fB\f\1\2=\f\28\v9\f\18\0009\f\29\fB\f\1\2=\f \v9\f\18\0009\f!\f)\14¸ˇB\f\2\2=\f#\v9\f\18\0009\f!\f)\14\4\0B\f\2\2=\f%\v9\f\18\0009\f&\fB\f\1\2=\f(\v9\f)\0009\f*\f=\f+\v9\f\18\0009\f/\fB\f\1\2=\f1\v9\f\18\0009\f2\fB\f\1\2=\f8\v9\f\18\0003\14\\\0005\15]\0B\f\3\2=\f;\v9\f\18\0003\14^\0B\f\2\2=\f>\vB\t\2\2=\t\18\b9\t)\0009\tH\t4\v\3\0005\f_\0>\f\1\v4\f\3\0005\r`\0>\r\1\fB\t\3\2=\tH\bB\5\3\0019\5\4\0009\5W\5'\aa\0005\bl\0009\t\18\0009\t\19\t9\tW\t5\ve\0009\f\18\0009\14\18\0009\14\21\0145\16c\0009\17\22\0009\17b\17=\17\25\16B\14\2\0025\15d\0B\f\3\2=\f\28\v9\f\18\0009\14\18\0009\14\29\0145\16f\0009\17\22\0009\17b\17=\17\25\16B\14\2\0025\15g\0B\f\3\2=\f \v9\f\18\0009\f!\f)\14¸ˇB\f\2\2=\f#\v9\f\18\0009\f!\f)\14\4\0B\f\2\2=\f%\v9\f\18\0009\f&\fB\f\1\2=\f(\v9\f)\0009\f*\f=\f+\v9\f\18\0009\f/\fB\f\1\2=\f1\v9\f\18\0009\f2\fB\f\1\2=\f8\v9\f\18\0003\14h\0005\15i\0B\f\3\2=\f;\v9\f\18\0003\14j\0005\15k\0B\f\3\2=\f>\vB\t\2\2=\t\18\b9\t)\0009\tH\t4\v\3\0005\fm\0>\f\1\v4\f\3\0005\rn\0>\r\1\fB\t\3\2=\tH\bB\5\3\0012\0\0ÄK\0\1\0\1\0\1\tname\vbuffer\1\0\1\tname\29nvim_lsp_document_symbol\1\0\0\1\3\0\0\6i\6c\0\1\3\0\0\6i\6c\0\1\3\0\0\6i\6c\1\0\0\1\0\0\1\3\0\0\6i\6c\1\0\0\vInsert\6/\1\0\1\tname\fcmdline\1\0\1\tname\tpath\0\1\3\0\0\6i\6c\0\1\0\0\1\0\0\1\0\1\17autocomplete\1\6:\fcmdline\vracket\tlisp\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\15formatting\vformat\0\1\0\1\15deprecated\2\fsources\1\0\1\tname\26vim-dadbod-completion\voption\1\0\2\17convert_case\2\tloud\2\1\0\3\tname\tlook\19max_item_count\3\5\19keyword_length\3\2\1\0\2\tname\tpath\19max_item_count\3\n\1\0\2\tname\vbuffer\19max_item_count\3\n\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\rnvim_lsp\1\0\2\tname\nvsnip\19max_item_count\3\n\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\1\0\0\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-p>\1\3\0\0\6i\6c\1\0\0\21select_prev_item\n<C-n>\1\0\0\1\3\0\0\6i\6c\rbehavior\1\0\0\vSelect\19SelectBehavior\21select_next_item\vinsert\vpreset\fmapping\fsnippet\vexpand\1\0\0\0\17experimental\1\0\1\15ghost_text\2\vwindow\18documentation\1\0\0\1\0\1\14max_width\3F\15completion\1\0\0\1\0\1\16completeopt\26menu,menuone,noinsert\nsetup\0\0\bcmp\frequire\2\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\blsp\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÉ\a\0\0\6\0&\0-6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0024\3\0\0=\3\b\0025\3\t\0004\4\0\0=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\19\0005\4\18\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0005\5\24\0=\5\25\4=\4\26\0035\4\27\0005\5\28\0=\5\25\4=\4\29\3=\3\30\0025\3\31\0=\3 \0025\3#\0005\4!\0005\5\"\0=\5\25\4=\4$\3=\3%\2B\0\2\1K\0\1\0\16textobjects\vselect\1\0\0\1\0\4\aac\17@class.outer\aic\17@class.inner\aif\20@function.inner\aaf\20@function.outer\1\0\2\14lookahead\2\venable\2\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\rrefactor\15navigation\1\0\5\24goto_previous_usage\n<a-#>\20goto_definition\bgnd\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\21list_definitions\bgnD\1\0\1\venable\2\17smart_rename\fkeymaps\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\fmatchup\1\0\1\venable\2\14autopairs\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\19ignore_install\fautotag\1\0\1\21ensure_installed\ball\14filetypes\1\b\0\0\thtml\15javascript\20javascriptreact\20typescriptreact\vsvelte\bvue\bxml\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: rest.nvim
time([[Config for rest.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14rest-nvim\frequire\0", "config", "rest.nvim")
time([[Config for rest.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
