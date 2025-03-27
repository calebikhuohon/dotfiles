-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
-- local servers = { "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     on_attach = nvlsp.on_attach,
--     on_init = nvlsp.on_init,
--     capabilities = nvlsp.capabilities,
--   }
-- end

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "pyright",      -- For type checking and advanced features
    "ruff",   -- For linting/formatting,
    "bash-language-server",
    "gitlab-ci-ls", -- yaml,
    "vuels",
    "eslint",
    "harper_ls",
    "tflint",
    "sqlls",
    "solidity-ls",
    "rust_analyzer",
    "buf_ls", -- protobuf
    "nil_ls", -- nix
    "nginx_language_server",
    "grammarly-languageserver", -- markdown
    "ltex", -- latex
    "spectral-language-server", -- json
    "jdtls", -- java
    "htmx-lsp",
    "graphql-lsp",
    "gopls",
    "docker-compose-langserver",
    "docker-langserver",
    "asm-lsp",
    "ansible-language-server",
  },
  handlers = {
    function (server_name)
      lspconfig[server_name].setup {
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
      }
    end
  }
})

require("lspconfig").ruff.setup({
  init_options = {
    settings = {
      -- Optional: Add Ruff-specific args
      args = { "--config=pyproject.toml" }
    }
  },
  -- Disable hover for Ruff
  on_attach = function(client)
    if client.name == "ruff" then
      client.server_capabilities.hoverProvider = false
    end
  end
})






-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
