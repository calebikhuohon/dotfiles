-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "ayu_dark",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
--}

M.nvimtree = {
  filters = {
    dotfiles = false,        -- Show dotfiles like .env, .gitignore
    git_ignored = false,     -- Show files ignored by git (.gitignore)
    custom = { "^\\.git$", "DS_Store" }, -- Still hide .git folder and DS_Store
  },
  git = {
    ignore = false,          -- Do not hide git-ignored files
    enable = true,           -- Show git status in the tree
  },
  renderer = {
    highlight_git = true,    -- Optional: highlight git status
    icons = {
      show = {
        git = true,
      },
    },
  },
  view = {
    side = "left",           -- Or "right" if you prefer
  },
}

return M
