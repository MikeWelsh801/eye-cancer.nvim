M = {}
M.pallet = require('eye-cancer.pallet')

M.groups = {
    Comment = { fg = M.pallet.dark_grey, gui = 'bold,italic' },
    String = { fg = M.pallet.dark_green, gui = 'bold,italic' },
    Character = { fg = M.pallet.dark_green, gui = 'bold,italic' },
    Keyword = { fg = M.pallet.yellow, gui = 'bold,italic' },
    Special = { fg = M.pallet.blue },
    Structure = { fg = M.pallet.grey },
    Function = { fg = M.pallet.blue, },
    Literal = { fg = M.pallet.grey, },
    Operator = { fg = M.pallet.grey, },
    Variable = { fg = M.pallet.white, },
    Identifier = { fg = M.pallet.white, },
    Field = { fg = M.pallet.grey, },
    Number = { fg = M.pallet.brown, },
    Preproc = { fg = M.pallet.blue },
    Boolean = { fg = M.pallet.brown, },

    -- Normal = { bg = M.pallet.bg, fg = pallet.white },
    -- Folded = { bg = M.pallet.bg, fg = pallet.white },
    -- LineNr = { bg = M.pallet.bg, fg = pallet.dark_grey },
    -- NonText = { bg = M.pallet.bg, fg = pallet.blue },
    -- SpecialKey = { bg = M.pallet.bg, fg = pallet.white },
    -- VertSplit = { bg = M.pallet.bg },
    -- SignColumn = { bg = M.pallet.bg, fg = pallet.yellow },
    -- EndOfBuffer = { bg = M.pallet.bg, fg = pallet.dark_bg },
    --
    -- GitSignsAdd = { bg = M.pallet.bg, fg = pallet.green },
    -- GitSignsChange = { bg = M.pallet.bg, fg = pallet.yellow },
    -- GitSignsDelete = { bg = M.pallet.bg, fg = pallet.red },
    --
    -- -- diagnostic signs
    -- DiagnosticSignError = { bg = M.pallet.bg, fg = pallet.red },
    -- DiagnosticSignWarn = { bg = M.pallet.bg, fg = pallet.yellow },
    -- DiagnosticSignHint = { bg = M.pallet.bg, fg = pallet.green },
    --
    -- -- status bar
    -- StatusLine = { bg = M.pallet.dark_bg, fg = pallet.dark_grey },
    -- ElInsert = { fg = M.pallet.red },

    ['@variable'] = { fg = M.pallet.off_white },
    ['@comment'] = { fg = M.pallet.green, gui = 'bold,italic' },
    ['@lsp.type.comment'] = { fg = M.pallet.green, gui = 'bold,italic' },

    -- this is for the new lsp builtin stuff
    ['@lsp.type.const'] = { fg = M.pallet.grey },
    ['@lsp.mod.readonly'] = { fg = M.pallet.off_white },
    ['@lsp.typemod.variable.static'] = { fg = M.pallet.off_white },
    ['@lsp.typemod.variable.global'] = { fg = M.pallet.off_white },
    ['@lsp.typemod.function.readonly'] = { fg = M.pallet.blue, gui = 'bold' },
    ['@lsp.type.macro'] = { fg = M.pallet.off_white },
    ['@lsp.type.property'] = { fg = M.pallet.off_white },
    ['@lsp.typemod.variable.defaultLibrary'] = { fg = M.pallet.white },

    ['@variable.member'] = { fg = M.pallet.off_white },
    ['@variable.builtin'] = { fg = M.pallet.off_white },
    ['@character.special'] = { fg = M.pallet.off_white },
    ['@constant'] = { fg = M.pallet.off_white },
    ['@constant.builtin'] = { fg = M.pallet.off_white },
    ['@label'] = { fg = M.pallet.off_white },
    ['@function.macro'] = { fg = M.pallet.off_white },
    ['@tag.attribute'] = { fg = M.pallet.off_white },

    ['@string.escape'] = { fg = M.pallet.brown, },

    ['@type'] = { fg = M.pallet.grey },
    ['@type.builtin'] = { fg = M.pallet.grey },

    ['@function.builtin'] = { fg = M.pallet.blue },
    ['@constructor'] = { fg = M.pallet.blue },

    ['@keyword'] = { fg = M.pallet.yellow },
    ['@keyword.exception'] = { fg = M.pallet.yellow },
    ['@repeat'] = { fg = M.pallet.yellow },
    ['@include'] = { fg = M.pallet.yellow },
    ['@storageclass'] = { fg = M.pallet.yellow },
    ['@conditional'] = { fg = M.pallet.yellow },
    ['@define'] = { fg = M.pallet.yellow },
    ['@preproc'] = { fg = M.pallet.yellow },
    ['@tag'] = { fg = M.pallet.yellow },
    ['@field'] = { fg = M.pallet.yellow },
    ['@keyword.operator'] = { fg = M.pallet.yellow },
    ['@keyword.import'] = { fg = M.pallet.yellow },
    ['@attribute'] = { fg = M.pallet.yellow },
    ['@keyword.return'] = { fg = M.pallet.yellow },
    ['@macro'] = { fg = M.pallet.yellow },
}

-- Convert hex color to RGB values
---@param hex string Hex color string (e.g., '#60a060')
---@return number, number, number
local function hexToRgb(hex)
    -- Remove the # if present
    hex = hex:gsub("#", "")

    -- Extract RGB components
    local r = tonumber(hex:sub(1, 2), 16)
    local g = tonumber(hex:sub(3, 4), 16)
    local b = tonumber(hex:sub(5, 6), 16)

    return r, g, b
end

-- Convert RGB values back to hex string
---@param r number Red value (0-255)
---@param g number Green value (0-255)
---@param b number Blue value (0-255)
---@return string Hex color string
local function rgbToHex(r, g, b)
    -- Clamp values to 0-255 range
    r = math.max(0, math.min(255, math.floor(r)))
    g = math.max(0, math.min(255, math.floor(g)))
    b = math.max(0, math.min(255, math.floor(b)))

    return string.format("#%02x%02x%02x", r, g, b)
end

-- Brighten a hex color by a specified amount
---@param hex string Hex color string
---@param brightness number Amount to brighten (can be negative to darken)
---@return string Brightened hex color string
local function brightenColor(hex, brightness)
    local r, g, b = hexToRgb(hex)
    return rgbToHex(r + brightness, g + brightness, b + brightness)
end

---@param brightness number Amount to brighten each color
function M.brighten(brightness)
    for name, value in pairs(M.pallet) do
        if name == "bg" then
            M.pallet[name] = brightenColor(value, brightness / 2)
        else
            M.pallet[name] = brightenColor(value, brightness)
        end
    end
end

return M
