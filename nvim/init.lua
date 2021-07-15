-- my nvim config write in lua

vim.g.mapleader = " "
vim.opt.termguicolors = true
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end
require('plugins')

--[[ local jdtls_ui = require'jdtls.ui'
function jdtls_ui.pick_one_async(items, _, _, cb)
function Action:action_callback()
  return function (_,_,response)
    if response == nil or vim.tbl_isempty(response) then
      print("No code actions available")
      return
    end

    local contents = {}
    local title = config['code_action_icon'] .. 'CodeActions:'
    table.insert(contents,title)

    local from_other_servers = function()
      local actions = {}
      for _,action in pairs(response) do
        self.actions[#self.actions+1] = action
        local action_title = '['..#self.actions ..']' ..' '.. action.title
        actions[#actions+1] = action_title
      end
      return actions
    end

    if self.actions and next(self.actions) ~= nil then
      local other_actions = from_other_servers()
      if next(other_actions) ~= nil then
        vim.tbl_extend('force',self.actions,other_actions)
      end
      api.nvim_buf_set_option(self.action_bufnr,'modifiable',true)
      vim.fn.append(vim.fn.line('$'),other_actions)
      vim.cmd("resize "..#self.actions+2)
      for i,_ in pairs(other_actions) do
        vim.fn.matchadd('LspSagaCodeActionContent','\\%'.. #self.actions+1+i..'l')
      end
    else
      self.actions = response
      for index,action in pairs(response) do
        local action_title = '['..index..']' ..' '.. action.title
        table.insert(contents,action_title)
      end
    end

    if #contents == 1 then return end

    -- insert blank line
    local truncate_line = wrap.add_truncate_line(contents)
    table.insert(contents,2,truncate_line)

    local content_opts = {
      contents = contents,
      filetype = 'LspSagaCodeAction',
      enter = true,
      highlight = 'LspSagaCodeActionBorder'
    }

    self.action_bufnr,self.action_winid = window.create_win_with_border(content_opts)
    api.nvim_command('autocmd CursorMoved <buffer> lua require("lspsaga.codeaction").set_cursor()')
    api.nvim_command("autocmd QuitPre <buffer> lua require('lspsaga.codeaction').quit_action_window()")

    api.nvim_buf_add_highlight(self.action_bufnr,-1,"LspSagaCodeActionTitle",0,0,-1)
    api.nvim_buf_add_highlight(self.action_bufnr,-1,"LspSagaCodeActionTruncateLine",1,0,-1)
    for i=1,#contents-2,1 do
      api.nvim_buf_add_highlight(self.action_bufnr,-1,"LspSagaCodeActionContent",1+i,0,-1)
    end
    self:apply_action_keys()
  end
end

function Action:apply_action_keys()
  local actions = {
    ['quit_action_window'] = config.code_action_keys.quit,
    ['do_code_action'] = config.code_action_keys.exec
  }
  for func, keys in pairs(actions) do
    apply_keys(func, keys)
  end
end

function libs.apply_keys(ns)
  return function(func, keys)
    keys = type(keys) == "string" and {keys} or keys
    local fmt = "nnoremap <buffer><nowait><silent>%s <cmd>lua require('lspsaga.%s').%s()<CR>"

    vim.tbl_map(function(key)
      api.nvim_command(string.format(fmt, key, ns, func))
    end, keys)
  end
end
end ]]
