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

Support project environment setting by [direnv](https://github.com/direnv/direnv), to set project env, install direnv
and add `.envrc` file to project root path, put your special variables to it.
Language special env note:
#### java
JAVA_HOME
MY_MAVEN_SETTINGS -- special maven `settings.xml`
TELESCOPE_FILE_IGNORE_PATTERNS -- special file_ignore_patterns setting. see `:h file_ignore_patterns`

#### Things to be done before first install
1. I use [lazygit](https://github.com/jesseduffield/lazygit) and [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) to execute git commands in neovim, so before you run `:PackerInstall`, install lazygit first.
2. install [ripgrep](https://github.com/BurntSushi/ripgrep) to your system, telescope depend on it.
3. install [ranger](https://github.com/ranger/ranger), [rnvimr](https://github.com/kevinhwang91/rnvimr) is a file explorer base on it, if you also use ranger as console file explorer (which I did), It provide a unified experience in neovim and terminal, so I recommend it to.
4. recommend [tmux](https://github.com/tmux/tmux) & [oh-my-tmux](https://github.com/gpakosz/.tmux) to manage your terminal.

