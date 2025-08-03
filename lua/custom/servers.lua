local schemastore = require("schemastore")

return {
  texlab = true,
  lua_ls = true,
  hls = true,
  pyright = true,
  clangd = true,
  cmake = true,
  jsonls = {
    settings = {
      json = {
        schemas = schemastore.json.schemas(),
        validate = { enable = true },
      },
    },
  },
  yamlls = {
    settings = {
      yaml = {
        schemaStore = {
          enable = false,
          url = '',
        },
        schemas = schemastore.yaml.schemas(),
      },
    },
  },
}
