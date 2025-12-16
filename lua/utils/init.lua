local M = {}


function M.current_win_has_vertical_neighbor()
  local current_win = vim.api.nvim_get_current_win()
  local current_pos = vim.fn.win_screenpos(current_win)
  local current_col = current_pos[2]
  local current_width = vim.api.nvim_win_get_width(current_win)

  for _, win in ipairs(vim.api.nvim_list_wins()) do
    if win ~= current_win and vim.api.nvim_win_get_config(win).relative == "" then
      local pos = vim.fn.win_screenpos(win)
      local col = pos[2]
      local width = vim.api.nvim_win_get_width(win)

      -- Check if windows overlap horizontally (same column range)
      if col < current_col + current_width and col + width > current_col then
        return true
      end
    end
  end
  return false
end


return M
