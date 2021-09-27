local M = {}
local root_markers = {'gradlew', 'pom.xml'}
local root_dir = require('jdtls.setup').find_root(root_markers)
local home = os.getenv('HOME')
local workspace_name, _ = string.gsub(vim.fn.fnamemodify(root_dir, ":p"), "/", "-")
M.cmd = {home .. '/.local/share/nvim/lspinstall/java/jdtls.sh', home .. "/.local/share/nvim/lspinstall/java/workspace/" .. workspace_name}
M.capabilities = {
  workspace = {configuration = true},
  textDocument = {completion = {completionItem = {snippetSupport = true}}}
}
--[[ local jar_patterns = {
  home ..
      '/.config/nvim/lua/lsp/java/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar',
  -- '/dev/dgileadi/vscode-java-decompiler/server/*.jar',
  home .. '/.config/nvim/lua/lsp/java/vscode-java-test/server/*.jar'
} ]]

--[[ for _, jar_pattern in ipairs(jar_patterns) do
  for _, bundle in ipairs(vim.split(vim.fn.glob(home .. jar_pattern), '\n')) do
    if not vim.endswith(bundle, 'com.microsoft.java.test.runner.jar') then
      table.insert(bundles, bundle)
    end
  end
end ]]

local bundles = {
  vim.fn.glob(home ..
                  '/.config/nvim/lua/lsp/java/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar')
}
vim.list_extend(bundles, vim.split(vim.fn.glob(home ..
                                                   '/.config/nvim/lua/lsp/java/vscode-java-test/server/*.jar'),
                                   '\n'))
vim.list_extend(bundles, vim.split(vim.fn.glob(home ..
                                                   '/.config/nvim/lua/lsp/java/vscode-java-decompiler/server/*.jar'),
                                   '\n'))
local extendedClientCapabilities = require'jdtls'.extendedClientCapabilities
extendedClientCapabilities.resolveAdditionalTextEditsSupport = true
M.init_options = {
  bundles = bundles,
  extendedClientCapabilities = extendedClientCapabilities
}

M.settings = {
  java = {
    jdt = {
      ls = {
        vmargs = "-XX:+UseParallelGC -XX:GCTimeRatio=4 -XX:AdaptiveSizePolicyWeight=90 -Dsun.zip.disableMemoryMapping=true -Xmx1G -Xms100m -XX:+UseStringDeduplication -javaagent:'" .. home .. "/.local/share/nvim/lspinstall/java/lombok.jar'"
      }
    },
    eclipse = {
      downloadSources = true,
    },
    format = {
      comments = {
        enabled = true
      },
      settings = {
        url = 'file://' .. home .. "/project/java-google-formatter.xml",
        profile = "GoogleStyle",
      }
    },
    maxConcurrentBuilds = 5,
    saveActions = {
      organizeImports = true,
    },
    trace = {
      server = "verbose"
    },
    referencesCodeLens = {enabled = true},
    implementationsCodeLens = {enabled = true},
    signatureHelp = {enabled = true},
    contentProvider = {preferred = 'fernflower'},
    templates = {
      typeComment = {
        "/**",
        " * @author: hewenjin",
        " * @date: ${date}",
        " * @description: ",
        " */",
      }
    },
    import = {
      maven = {enabled = true},
      exclusions = {
        "**/node_modules/**",
        "**/.metadata/**",
        "**/archetype-resources/**",
        "**/META-INF/maven/**",
        "**/Frontend/**",
        "**/CSV_Aggregator/**"
      },
    },
    maven = {
      downloadSources = true
    },
    autobuild = {enabled = true},
    completion = {
      overwrite = false,
      guessMethodArguments = true,
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
      generateComments = true,
      useBlocks = true,
      toString = {
        template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}"
      }
    },
    decompiler = {
      fernflower = {
        asc = true
      }
    },
    home = "/usr/lib/jvm/java-11-openjdk/",
    configuration = {
      maven = {
        globalSettings = "/opt/maven/conf/settings.xml",
      },
      runtimes = {
        {
          name = "JavaSE-11",
          path = "/usr/lib/jvm/java-11-openjdk/"
        },
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

M.on_init = function(client, _)
  client.notify('workspace/didChangeConfiguration', {settings = M.settings})
end

return M
