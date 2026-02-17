local cmp = require "cmp"
local compare = require "cmp.config.compare"

local options = {
  mapping = {
    ["<Up>"] = cmp.mapping.select_prev_item(),
    ["<Down>"] = cmp.mapping.select_next_item(),
    ["<Tab>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },
  },

  sources = {
    { name = "nvim_lsp", max_item_count = 100 },
    { name = "luasnip", max_item_count = 2 },
    { name = "buffer", max_item_count = 2 },
    { name = "nvim_lua", max_item_count = 5 },
    { name = "async_path", max_item_count = 3 },
  },

  view = {
    docs = {
      auto_open = true,
    },
  },

  window = {
    completion = cmp.config.window.bordered({
      max_height = 20
    })
  },

  sorting = {
    priority_weight = 2,
    comparators = {
      compare.offset,
      compare.exact,
      -- compare.scopes,
      compare.score,
      compare.recently_used,
      compare.locality,
      compare.kind,
      compare.sort_text,
      compare.length,
      compare.order,
    },
  },
}

return options
