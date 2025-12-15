require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

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

map("n", "<C-p>", function()
  require("telescope.builtin").find_files()
end)

map("n", "<C-f>", function()
  require("telescope.builtin").live_grep()
end)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "ö", function()
  require("conform").format { lsp_fallback = true }
end)

map("n", "tc", function()
  vim.cmd.norm "gcc"
end)

map("v", "tc", function()
  vim.cmd.norm "gc"
end)
