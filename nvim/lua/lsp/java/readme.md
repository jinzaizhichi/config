Java LSP settings

Currently I use jdtls base on [nvim-lspinstal](https://github.com/kabouzeid/nvim-lspinstall),
But the auto generate script had some issue, Do not know why yet,
to fix this, edit this sh file ~/.local/share/nvim/lspinstall/java/jdtls.sh
delete this line

```
  -Xbootclasspath/a:/home/hewenjin/.local/share/nvim/lspinstall/java/lombok.jar \
```

When use nvim-jdtls, my local setting need to set a symbollink to `~/.local/bin` directory

```
ln -s ~/.config/nvim/lua/lsp/java/java-lsp.sh java-lsp.sh
```
