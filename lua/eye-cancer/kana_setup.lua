
require("kanagawa").setup({
  colors = {
    theme = {
      all = {
        ui = {
          bg_gutter = 'none'
        }
      }
    },
  },
  overrides = function(colors)
    local theme = colors.theme
    return {
      Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
      PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
      PmenuSbar = { bg = theme.ui.bg_m1 },
      PmenuThumb = { bg = theme.ui.bg_p2 },

      NormalFloat = { bg = "none" },
      FloatBorder = { bg = "none" },
      FloatTitle = { bg = "none" },

      -- Save an hlgroup with dark background and dimmed foreground
      -- so that you can use it where your still want darker windows.
      -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
      NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

      -- Popular plugins that open floats will link to NormalFloat by default;
      -- set their background accordingly if you wish to keep them dark and borderless
      LazyNormal = { bg = theme.ui.bg_m1, fg = theme.ui.fg_dim },
      MasonNormal = { bg = theme.ui.bg_m1, fg = theme.ui.fg_dim },

      TelescopeTitle = { fg = theme.ui.special, bold = true },
      TelescopePromptNormal = { bg = "none", fg = "none" },
      TelescopePromptBorder = { fg = theme.ui.bg_m1, bg = "none" },
      TelescopeResultsNormal = { fg = theme.ui.fg_dim },
      TelescopeResultsBorder = { fg = theme.ui.bg_m1 },
      TelescopePreviewNormal = { bg = "none" },
      TelescopePreviewBorder = { bg = "none", fg = theme.ui.bg_m1 },
    }
  end,
})

-- colors
function SetBackground(color)
  color = color or "kanagawa-dragon"
  require('kanagawa').load('dragon')
  vim.cmd.colorschem(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  local c = require("eye-cancer.pallet")

  -- make all of the side line stuff transparent
  -- vim.cmd("highlight LineNr guibg=None")
  -- vim.cmd("highlight SignColumn guibg=None")
  vim.cmd("hi Normal guibg=" .. c.bg)
  vim.cmd("hi LineNr guibg=" .. c.bg)
  vim.cmd("hi Folded guibg=" .. c.bg)
  vim.cmd("hi NonText guibg=" .. c.bg)
  vim.cmd("hi SpecialKey guibg=" .. c.bg)
  vim.cmd("hi VertSplit guibg=" .. c.bg)
  vim.cmd("hi SignColumn guibg=" .. c.bg)
  vim.cmd("hi EndOfBuffer guibg=" .. c.bg)

  vim.cmd("highlight CursorLineNr guibg=" .. c.bg .. " guifg=" .. c.off_white)
  vim.cmd("highlight GitSignsAdd guibg=" .. c.bg)
  vim.cmd("highlight GitSignsChange guibg=" .. c.bg)
  vim.cmd("highlight GitSignsDelete guibg=" .. c.bg)

  -- diagnostic signs
  vim.cmd("highlight DiagnosticSignError guibg=" .. c.bg)
  vim.cmd("highlight DiagnosticSignWarn guibg=" .. c.bg)
  vim.cmd("highlight DiagnosticSignHint guibg=" .. c.bg)

  -- status bar
  vim.cmd("highlight StatusLine guibg=" .. c.dark_bg)
  vim.cmd("highlight StatusLine guifg=" .. c.dark_grey)
  vim.cmd("highlight ElInsert guifg=" .. c.red)
end
