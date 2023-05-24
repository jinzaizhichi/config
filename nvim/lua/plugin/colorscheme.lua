return {
  {'Mofiqul/vscode.nvim', cond = not vim.g.vscode, config = function ()
    require('vscode').setup({
      transparent = true
    })
  end},
  {'NvChad/nvim-colorizer.lua', cond = not vim.g.vscode, config = true},
}
