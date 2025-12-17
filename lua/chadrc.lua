-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "tokyonight",
  transparency = true,

  hl_override = {
    IblChar = {
      fg = "#1a1a1a",
    },
    IblScopeChar = {
      fg = "#555555",
    },
    CursorLine = {
      bg = "#191919",
    },
    CursorLineNr = {
      fg = "#ffffff",
      bg = "#333333"
    }
  },
}

M.nvdash = { load_on_startup = true }

M.ui = {
  tabufline = {
    enabled = false,
  },

  statusline = {
    theme = "minimal",
  },
}

M.lsp = {
  signature = true,
}

return M
