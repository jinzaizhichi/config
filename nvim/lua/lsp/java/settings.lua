local M = {}
local home = os.getenv('HOME')
local jar_patterns = {
  home ..
      '/.config/nvim/lua/lsp/java/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar',
  -- '/dev/dgileadi/vscode-java-decompiler/server/*.jar',
  home .. '/.config/nvim/lua/lsp/java/vscode-java-test/server/*.jar'
}

local bundles = {}
for _, jar_pattern in ipairs(jar_patterns) do
  for _, bundle in ipairs(vim.split(vim.fn.glob(home .. jar_pattern), '\n')) do
    if not vim.endswith(bundle, 'com.microsoft.java.test.runner.jar') then
      table.insert(bundles, bundle)
    end
  end
end

local extendedClientCapabilities = {}
extendedClientCapabilities.resolveAdditionalTextEditsSupport = true
M.init_options = {
  bundles = bundles,
  extendedClientCapabilities = extendedClientCapabilities
}
M.handlers = {
  --[[ ["language/status"] = function(err, _, actions, client_id)
    print("status action")
  end,
  ["textDocument/codeAction"] = function(err, _, actions, client_id)
    vim.lsp.buf_request(0, 'textDocument/codeAction', code_action_params,
                        function(err, _, actions, client_id)
      print("code action")
      print(err)
      print(_)
      print(actions)
      print(client_id)
    end)
  end,
  ["workspace/executeClientCommand'"] = function()
    print("java.apply.workspaceEdit action");
  end,
  ["textDocument/rename"] = function(err, _, actions, client_id)
    print("rename action")
  end,
  ["workspace/applyEdit"] = function(command)
    print("applyEdit")
    for _, argument in ipairs(command.arguments) do
      vim.lsp.util.apply_workspace_edit(argument)
    end
  end ]]
}
M.settings = {
  ['java.format.settings.url'] = home .. "/project/java-google-formatter.xml",
  ['java.format.settings.profile'] = "GoogleStyle",
  java = {
    signatureHelp = {enabled = true},
    contentProvider = {preferred = 'fernflower'},
    completion = {
      favoriteStaticMembers = {
        "org.hamcrest.MatcherAssert.assertThat", "org.hamcrest.Matchers.*",
        "org.hamcrest.CoreMatchers.*", "org.junit.jupiter.api.Assertions.*",
        "java.util.Objects.requireNonNull",
        "java.util.Objects.requireNonNullElse", "org.mockito.Mockito.*"
      }
    },
    sources = {
      organizeImports = {starThreshold = 9999, staticStarThreshold = 9999}
    },
    codeGeneration = {
      toString = {
        template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}"
      }
    },
    home = "/usr/lib/jvm/java-11-openjdk/",
    configuration = {
      runtimes = {
        {name = "JavaSE-11", path = "/usr/lib/jvm/java-11-openjdk/"},
        {
          name = "JavaSE-1.8",
          path = "/usr/lib/jvm/java-8-openjdk/",
          default = true
        }
        --[[ {
            name = "JavaSE-14",
            path = home .. "/usr/lib/jvm/java-11-openjdk/",
          }, ]]
      }
    }
  }
}

return M
