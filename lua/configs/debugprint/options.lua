local options = {
  move_to_debugline = true,
  keymaps = {
    normal = {
      -- Disable default keymaps to avoid conflicts
      plain_below = false,
      plain_above = false,
      variable_below = false,
      variable_above = false,
      variable_below_alwaysprompt = false,
      variable_above_alwaysprompt = false,
      surround_plain = false,
      surround_variable = false,
      surround_variable_alwaysprompt = false,
      textobj_below = false,
      textobj_above = false,
      textobj_surround = false,
      toggle_comment_debug_prints = false,
      delete_debug_prints = false,
    },
    insert = {
      plain = false,
      variable = false,
    },
    visual = {
      variable_below = "<leader>l",
      variable_above = "<leader>L",
    },
  },
}

return options
