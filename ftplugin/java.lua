local home = os.getenv('HOME')

local ok, jdtls = pcall(require, "jdtls")
if not ok then
  vim.notify("jdtls could not be loaded")
  return
end

local ok_mason, mason_registry = pcall(require, "mason-registry")
if not ok_mason then
  vim.notify("mason-registry could not be loaded")
  return
end

local ok_cmp, nvim_cmp = pcall(require, "cmp_nvim_lsp")
if not ok_cmp then
  vim.notify("cmp_nvim_lsp could not be loaded")
  return
end

local jdtls_path = mason_registry.get_package("jdtls"):get_install_path()

-- local root_markers = {'gradlew', 'mvnw', '.git', 'pom.xml'}
local root_markers = {'gradlew', 'mvnw', '.git'}
local root_dir = require "jdtls.setup".find_root(root_markers)

local workspace_folder = home .. "/.local/share/eclipse/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

local function nnoremap(rhs, lhs, bufopts, desc)
  bufopts.desc = desc
  vim.keymap.set("n", rhs, lhs, bufopts)
end

local on_attach = function (client, bufnr)
  local bufopts = {noremap = true, silent = true, buffer = bufnr}
  nnoremap('<space>lo', jdtls.organize_imports, bufopts, "[o]rganize import")
  nnoremap('<space>lv', jdtls.extract_variable, bufopts, "extract [v]ariable")
  nnoremap('<space>lc', jdtls.extract_constant, bufopts, "extract [c]onstant")
  vim.keymap.set('v', "<space>lm", [[<ESC><CMD>lua require "jdtls".extract_method(true)<CR>]], {noremap = true, silent = true, buffer = bufnr, desc = "extract method"})
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = nvim_cmp.default_capabilities(capabilities)

local config = {
  flags = {
    debounce_text_changes = 80,
  },
  capabilities = capabilities,
  on_attach = on_attach,
  root_dir = root_dir,
  -- Here you can configure eclipse.jdt.ls specific settings
  -- These are defined by the eclipse.jdt.ls project and will be passed to eclipse when starting.
  -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
  -- for a list of options
  settings = {
    java = {
      format = {
        settings = {
          url = home .. "/.local/share/eclipse/eclipse-java-google-style.xml",
          profile = "GoogleStyle",
        },
      },
      eclpise = {
        downloadSources = true,
      },
      maven = {
        downloadSources = true,
      },
      -- TODO No idea what this does
      -- referenceCodeLens = { enabled = true },
      -- implementationsCodeLens = { enabled = true },
      -- inlayHints = {
      --   parameterNames = {
      --     enabled = "all",
      --   },
      -- },
      signatureHelp = { enabled = true },
      contentProvider = { preferred = 'fernflower' },
      completion = {
        favoriteStaticMembers = {
          "org.hamcrest.MatcherAssert.assertThat",
          "org.hamcrest.Matchers.*",
          "org.hamcrest.CoreMatchers.*",
          "org.junit.jupiter.api.Assertions.*",
          "java.util.Objects.requireNonNull",
          "java.util.Objects.requireNonNullElse",
          "org.mockito.Mockito.*"
        },
        filteredTypes = {
          "com.sun.*",
          "io.micrometer.shaded.*",
          "java.awt.*",
          "jdk.*", "sun.*",
        },
      },
      sources = {
        organizeImports = {
          startThreshold = 9999;
          staticStartThreshold = 9999;
        },
      },
      codeGeneration = {
        toString = {
          template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}"
        },
        hashCodeEquals = {
          useJava7Objects = true,
        },
        useBlocks = true,
      },
      -- If you are developing in projects with different Java versions, you need
      -- to tell eclipse.jdt.ls to use the location of the JDK for your Java version
      -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
      -- And search for `interface RuntimeOption`
      -- The `name` is NOT arbitrary, but must match one of the elements from `enum ExecutionEnvironment` in the link above
      configuration = {
        runtimes = {
          -- {
          --   name = "JavaSE-17",
          --   path = home .. "/.asdf/installs/java/...",
          -- },
        },
      }
    },
  },
  cmd = {
    'java', -- or '/path/to/java17_or_newer/bin/java'
            -- depends on if `java` is in your $PATH env variable and if it points to the right version.

    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xmx4g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',

    '-jar', vim.fn.glob(jdtls_path .. "/plugins/org.eclipse.equinox.launcher_*.jar"),
    '-configuration', jdtls_path .. "/config_linux",
    '-data', workspace_folder,
  },
}

jdtls.start_or_attach(config)
