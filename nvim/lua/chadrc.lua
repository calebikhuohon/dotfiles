---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "ayu_dark",
  transparency = false,
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  statusline = {
    theme = "vscode_colored",
  },
  tabufline = {
    lazyload = false,
  },
}

M.nvimtree = {
  filters = {
    dotfiles = false,
    git_ignored = false,
    custom = { "^\\.git$", "DS_Store" },
  },
  git = {
    ignore = false,
    enable = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  view = {
    side = "left",
  },
}

return M
