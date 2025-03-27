--- General framework for context aware hover providers (similar to vim.lsp.buf.hover).
return {
  "lewis6991/hover.nvim",
  config = function()
    require("hover").setup({
      init = function()
        require("hover.providers.lsp")
      end,
      preview_opts = {
        border = 'rounded'
      },
      title = true
    })

    -- Keybinding
    vim.keymap.set("n", "K", require("hover").hover, {desc = "Hover documentation"})
  end
}

