M = {}

local groups = require('eye-cancer.syntax')

-- colors
--- Adds a highlight for the group
local function highlight(group, table)
  local fg = table.fg and table.fg or "NONE"
  local bg = table.bg and table.bg or "NONE"
  local gui = table.gui and table.gui or "NONE"

  local cmd = "highlight " .. group .. " guifg=" .. fg .. " guibg=" .. bg .. " gui=" .. gui
  vim.cmd(cmd)
end

function M.setup()
  vim.cmd("set background=dark")
  require('eye-cancer.kana_setup')
  SetBackground()
  for key, value in pairs(groups) do
    highlight(key, value)
  end
end

return M
