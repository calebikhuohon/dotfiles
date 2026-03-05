require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "ansiblels",
    "buf_ls",
    "cpplint",
    "cssls",
    "dart-debug-adapter",
    "delve",
    "denols",
    "docker_compose_language_service",
    "dockerls",
    "dotenv-linter",
    "eslint",
    "gh-actions-language-server",
    "gitlab_ci_ls",
    "gopls",
    "hadolint",
    "harper_ls",
    "html",
    "java-debug-adapter",
    "java-test",
    "jdtls",
    "jsonls",
    "jsonlint",
    "kotlin-debug-adapter",
    "kotlin_language_server",
    "kube-linter",
    "ltex",
    "lua_ls",
    "mypy",
    "nginx_language_server",
    "opa",
    "pyright",
    "ruff",
    "rust_analyzer",
    "solc",
    "sqlls",
    "sqls",
    "stylua",
    "tailwindcss",
    "tflint",
    "vuels",
    "vimls",
    "yamlls",
  },
  handlers = {
    function(server_name)
      lspconfig[server_name].setup {
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
      }
    end,
  },
})

require("lspconfig").ruff.setup({
  init_options = {
    settings = {
      args = { "--config=pyproject.toml" },
    },
  },
  on_attach = function(client)
    if client.name == "ruff" then
      client.server_capabilities.hoverProvider = false
    end
  end,
})

require("lspconfig").pyright.setup({
  settings = {
    python = {
      autoSearchPaths = true,
      useLibraryCodeForTypes = true,
      analysis = {
        executionEnvironments = {
          { root = "src" },
        },
      },
    },
  },
})
