M = {}

local syntax = require('eye-cancer.syntax')
local brightened = false
local brighen_amount = 16

-- colors
--- Adds a highlight for the group
local function highlight(group, table)
    local fg = table.fg and table.fg or "NONE"
    local bg = table.bg and table.bg or "NONE"
    local gui = table.gui and table.gui or "NONE"

    local cmd = "highlight " .. group .. " guifg=" .. fg .. " guibg=" .. bg .. " gui=" .. gui
    vim.cmd(cmd)
end

--@param opts table
--@param opts.brighten boolean
function M.setup(opts)
    if opts.brighten and not brightened then
        syntax.brighten(brighen_amount)
        brightened = true
    elseif not opts.brighten and brightened then
        syntax.brighten(-brighen_amount)
        brightened = false
    end

    vim.cmd("set background=dark")
    require('eye-cancer.kana_setup')
    SetBackground()
    for key, value in pairs(syntax.groups) do
        highlight(key, value)
    end
end

return M
