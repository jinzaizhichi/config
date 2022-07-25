local home = os.getenv('HOME')
local jdtlsMavenSettings = os.getenv('JDTLS_MAVEN_SETTINGS')
local config_path = vim.fn.stdpath('config')
local data_path = vim.fn.stdpath('data')
local M = {
  java = {
    settings = {
      url = config_path .. '/lua/lsp/jdtls/settings.prefs'
    },
    jdt = {
      ls = {
        vmargs = "-XX:GCTimeRatio=4 -XX:AdaptiveSizePolicyWeight=90 -Dsun.zip.disableMemoryMapping=true -Xmx2G -Xms1G -javaagent:'"
            .. data_path .. "/mason/packages/jdtls/lombok.jar'"
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
        url = config_path .. '/lua/lsp/jdtls/eclipse-java-google-style.xml',
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
    referencesCodeLens = { enabled = true },
    implementationsCodeLens = { enabled = true },
    signatureHelp = { enabled = true },
    contentProvider = { preferred = 'fernflower' },
    templates = {
      fileHeader = {
        "/**",
        " * @author: ${user}",
        " * @date: ${date}",
        " * @description: ${file_name}",
        " */",
      },
      typeComment = {
        "/**",
        " * @author: ${user}",
        " * @date: ${date}",
        " * @description: ${type_name}",
        " */",
      }
    },
    import = {
      maven = { enabled = true },
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
    autobuild = { enabled = true },
    completion = {
      filteredTypes = {
        "java.awt.List",
        "com.sun.*"
      },
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
      organizeImports = { starThreshold = 9999, staticStarThreshold = 9999 }
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
        asc = 1,
        ind = "    "
      }
    },
    home = "/usr/lib/jvm/java-11-openjdk/",
    configuration = {
      maven = {
        globalSettings = "/opt/maven/conf/settings.xml",
        userSettings = jdtlsMavenSettings or home .. "/.m2/settings.xml",
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
        },
        {
          name = "JavaSE-17",
          path = "/usr/lib/jvm/java-17-openjdk/",
        },
      }
    }
  }
}

return M
