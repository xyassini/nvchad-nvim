require "nvchad.mappings"
local utils = require "utils"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- pane switching
map("n", "+", function()
  vim.cmd "wincmd l"
end)
map("n", "ü", function()
  vim.cmd "wincmd h"
end)
map("n", "ä", function()
  vim.cmd "wincmd j"
end)
map("n", "ß", function()
  vim.cmd "wincmd k"
end)

-- pane splitting
map("n", "<C-+>", function()
  vim.cmd.vs()
  vim.cmd "wincmd l"
  require("telescope.builtin").find_files()
end)
map("n", "<C-ü>", function()
  vim.cmd.vs()
  require("telescope.builtin").find_files()
end)
map("n", "<C-ä>", function()
  vim.cmd.sp()
  vim.cmd "wincmd j"
  require("telescope.builtin").find_files()
end)
map("n", "<C-ß>", function()
  vim.cmd.sp()
  require("telescope.builtin").find_files()
end)

-- find stuff
map("n", "<C-p>", function()
  require("telescope.builtin").find_files()
end)

map("n", "<C-f>", function()
  require("telescope.builtin").live_grep()
end)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- other ui things

map("n", "±", function() -- Alt+Plus
  local api = require "nvim-tree.api"
  if api.tree.is_tree_buf() then
    vim.cmd "NvimTreeResize +5"
  else
    local width = vim.api.nvim_win_get_width(0)
    vim.api.nvim_win_set_width(0, width + 5)
  end
end)

map("n", "•", function() -- Alt+Ü
  local api = require "nvim-tree.api"
  if api.tree.is_tree_buf() then
    vim.cmd "NvimTreeResize -5"
  else
    local width = vim.api.nvim_win_get_width(0)
    vim.api.nvim_win_set_width(0, width - 5)
  end
end)

map("n", "¿", function() -- Alt+ß
  if utils.current_win_has_vertical_neighbor() then
    local height = vim.api.nvim_win_get_height(0)
    vim.api.nvim_win_set_height(0, height + 5)
  end
end)

map("n", "æ", function() -- Alt+Ä
  if utils.current_win_has_vertical_neighbor() then
    local height = vim.api.nvim_win_get_height(0)
    vim.api.nvim_win_set_height(0, height - 5)
  end
end)

map("n", "–", function()
  local api = require "nvim-tree.api"
  if api.tree.is_tree_buf() then
    vim.cmd "NvimTreeResize -5"
  else
    local width = vim.api.nvim_win_get_width(0)
    vim.api.nvim_win_set_width(0, math.max(width - 5, 5))

    if utils.current_win_has_vertical_neighbor() then
     local height = vim.api.nvim_win_get_height(0)
      vim.api.nvim_win_set_height(0, math.max(height - 2, 2))
    end
  end
end)

map("n", "=", function()
  vim.cmd "resize"
  vim.cmd "wincmd ="
end)

-- lsp
map("n", "ö", function()
  require("conform").format { lsp_fallback = true }
end)

map("n", "<leader>rr", function()
  require("grug-far").open()
end, { desc = "[Global] Search and replace" })

map("n", "<leader>rw", function()
  require("grug-far").open { prefills = { search = vim.fn.expand "<cword>" } }
end, { desc = "[Global] Search and replace word under cursor" })

map("n", "<leader>rW", function()
  require("grug-far").open { prefills = { paths = vim.fn.expand "%", search = vim.fn.expand "<cword>" } }
end, { desc = "[Local] Search and replace word under cursor in current file only" })

map("n", "<leader>rf", function()
  require("grug-far").open { prefills = { paths = vim.fn.expand "%" } }
end, { desc = "[Local] Search and replace in current file only" })

map("n", "<C-Enter>", function()
  vim.lsp.buf.code_action()
end)

-- productivity
map("n", "tc", function()
  vim.cmd.norm "gcc"
end)

map("v", "tc", function()
  vim.cmd.norm "gc"
end)

map("n", "<leader>e", function()
  require("nvim-tree.api").tree.toggle { focus = true }
end, { desc = "nvimtree focus window" })

-- Disable mappings
local nomap = vim.keymap.del

nomap("n", "<leader>gt")
-- nomap("n", "<leader>rn")
-- nomap("n", "<leader>ra")
