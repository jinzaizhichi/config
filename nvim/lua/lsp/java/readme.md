Java LSP settings

Currently I use jdtls base on [nvim-lspinstal](https://github.com/kabouzeid/nvim-lspinstall),
But the auto generate script had some issue, Do not know why yet,
to fix this, edit this sh file ~/.local/share/nvim/lspinstall/java/jdtls.sh
delete this line

```
  -Xbootclasspath/a:/home/hewenjin/.local/share/nvim/lspinstall/java/lombok.jar \
```

the LSP will be work well. But the neovim lsp build-in code action still not working. I should fix it some time.
