return function ()
  local cmp = require('cmp')
  cmp.setup({
    completion = {
      completeopt = 'menu,menuone,noinsert',
    },
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },
    mapping = {
      ['<C-p>'] = cmp.mapping.select_prev_item(),
      ['<C-n>'] = cmp.mapping.select_next_item(),
      ['<C-d>'] = cmp.mapping.scroll_docs(4),
      ['<C-u>'] = cmp.mapping.scroll_docs(-4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
      },
      ['<Tab>'] = function(fallback)
        if vim.fn.pumvisible() == 1 then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-n>', true, true, true), 'n')
        --[[ elseif luasnip.expand_or_jumpable() then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '') ]]
        else
          fallback()
        end
      end,
      ['<S-Tab>'] = function(fallback)
        if vim.fn.pumvisible() == 1 then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-p>', true, true, true), 'n')
        --[[ elseif luasnip.jumpable(-1) then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '') ]]
        else
          fallback()
        end
      end,
    },
    sources = {
      { name = 'nvim_lsp' },
      -- { name = 'cmp_tabnine' },
      { name = 'treesitter' },
      { name = 'vim-dadbod-completion' },
      { name = 'vsnip' },
      { name = 'buffer' },
      { name = 'path' },
      { name = 'look' },
    },
    formatting = {
      deprecated = true,
      format = function(entry, vim_item)
        --[[ vim_item.kind = lspkind.presets.default[vim_item.kind]
        return vim_item ]]
            -- fancy icons and a name of kind
        vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind

        -- set a name for each source
        vim_item.menu = ({
          buffer = "[Buffer]",
          nvim_lsp = "[LSP]",
          vsnip = "[VSnip]",
          path = "[Path]",
          cmp_tabnine = "[Tabnine]",
          look = "[Look]",
          treesitter = "[Treesitter]",
          nvim_lua = "[Lua]",
          latex_symbols = "[Latex]",
          ['vim-dadbod-completion'] = "[Dadbod]",
        })[entry.source.name]
        return vim_item
      end
    }
  })
  -- If you want insert `(` after select function or method item
  local cmp_autopairs = require('nvim-autopairs.completion.cmp')
  cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({ map_char = { tex = '{' } }))
end
