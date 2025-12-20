local keys = {
  {
    "<leader>l",
    function()
      local word = vim.fn.expand "<cword>"
      if word and word ~= "" and word:match "^[%a_][%w_]*$" then
        -- Cursor is on a variable, use variable_below
        require("debugprint").debugprint { variable = true }
      else
        -- Cursor is not on a variable, use plain_below and move cursor
        require("debugprint").debugprint()
        vim.defer_fn(function()
          vim.cmd "normal! $h"
          vim.cmd "startinsert"
        end, 10)
      end
    end,
    desc = "Debug print below (smart)",
    mode = "n",
  },
  {
    "<leader>L",
    function()
      local word = vim.fn.expand "<cword>"
      if word and word ~= "" and word:match "^[%a_][%w_]*$" then
        -- Cursor is on a variable, use variable_above
        require("debugprint").debugprint { variable = true, above = true }
      else
        -- Cursor is not on a variable, use plain_above and move cursor
        require("debugprint").debugprint { above = true }
        vim.defer_fn(function()
          vim.cmd "normal! $h"
          vim.cmd "startinsert"
        end, 10)
      end
    end,
    desc = "Debug print above (smart)",
    mode = "n",
  },
}

return keys
