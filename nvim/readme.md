### Personal nvim configuration

#### Directory function notes

`./plugin`  
This is where I put vim base settings

`./lua/lsp`  
LSP config

`./lua/plugins`  
plugins with settings

`./after`  
just some filetype and colorscheme settings

#### Things to be done before first install
1. I use [lazygit](https://github.com/jesseduffield/lazygit) and [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) to execute git commands in neovim, so before you run `:PackerInstall`, install lazygit first.
2. install [ripgrep](https://github.com/BurntSushi/ripgrep) to your system, telescope depend on it.
3. recommend [tmux](https://github.com/tmux/tmux) & [oh-my-tmux](https://github.com/gpakosz/.tmux) to manage your terminal.

### NOTE: the [auto-session](https://github.com/rmagatti/auto-session) make every session auto save, but when you edit nvim config, old session will not be update to newtest config, so every time you edit nvim config, be sure you clear the session directory `~/.local/share/nvim/sessions` to 
