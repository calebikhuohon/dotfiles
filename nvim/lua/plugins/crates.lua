---A neovim plugin that helps managing crates.io dependencies
return {
  "Saecki/crates.nvim",
  event = { "BufRead Cargo.toml" },
  opts = {
    src = {
      cmp = { enabled = true },
    },
  },
}
