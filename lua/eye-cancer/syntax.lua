local pallet = require('eye-cancer.pallet')

return {
  Comment = { fg = pallet.dark_grey, gui = 'bold,italic' },
  String = { fg = pallet.dark_green, gui = 'bold,italic' },
  Character = { fg = pallet.dark_green, gui = 'bold,italic' },
  Keyword = { fg = pallet.yellow, gui = 'bold,italic' },
  Structure = { fg = pallet.grey },
  Function = { fg = pallet.blue, },
  Literal = { fg = pallet.grey, },
  Operator = { fg = pallet.grey, },
  Variable = { fg = pallet.white, },
  Identifier = { fg = pallet.white, },
  Field = { fg = pallet.grey, },
  Number = { fg = pallet.brown, },
  Boolean = { fg = pallet.brown, },

  -- Normal = { bg = pallet.bg, fg = pallet.white },
  -- Folded = { bg = pallet.bg, fg = pallet.white },
  -- LineNr = { bg = pallet.bg, fg = pallet.dark_grey },
  -- NonText = { bg = pallet.bg, fg = pallet.blue },
  -- SpecialKey = { bg = pallet.bg, fg = pallet.white },
  -- VertSplit = { bg = pallet.bg },
  -- SignColumn = { bg = pallet.bg, fg = pallet.yellow },
  -- EndOfBuffer = { bg = pallet.bg, fg = pallet.dark_bg },
  --
  -- GitSignsAdd = { bg = pallet.bg, fg = pallet.green },
  -- GitSignsChange = { bg = pallet.bg, fg = pallet.yellow },
  -- GitSignsDelete = { bg = pallet.bg, fg = pallet.red },
  --
  -- -- diagnostic signs
  -- DiagnosticSignError = { bg = pallet.bg, fg = pallet.red },
  -- DiagnosticSignWarn = { bg = pallet.bg, fg = pallet.yellow },
  -- DiagnosticSignHint = { bg = pallet.bg, fg = pallet.green },
  --
  -- -- status bar
  -- StatusLine = { bg = pallet.dark_bg, fg = pallet.dark_grey },
  -- ElInsert = { fg = pallet.red },

  ['@variable'] = { fg = pallet.white },
  ['@comment'] = { fg = pallet.green, gui = 'bold,italic' },
  ['@lsp.type.comment'] = { fg = pallet.green, gui = 'bold,italic' },

  -- this is for the new lsp builtin stuff
  ['@lsp.type.const'] = { fg = pallet.grey },
  ['@lsp.mod.readonly'] = { fg = pallet.off_white },
  ['@lsp.typemod.variable.static'] = { fg = pallet.off_white },
  ['@lsp.typemod.variable.global'] = { fg = pallet.off_white },
  ['@lsp.type.macro'] = { fg = pallet.off_white },
  ['@lsp.type.property'] = { fg = pallet.off_white },
  ['@lsp.typemod.variable.defaultLibrary'] = { fg = pallet.white },

  ['@variable.member'] = { fg = pallet.off_white },
  ['@variable.builtin'] = { fg = pallet.off_white },
  ['@character.special'] = { fg = pallet.off_white },
  ['@constant'] = { fg = pallet.off_white },
  ['@constant.builtin'] = { fg = pallet.off_white },
  ['@label'] = { fg = pallet.off_white },
  ['@function.macro'] = { fg = pallet.off_white },
  ['@tag.attribute'] = { fg = pallet.off_white },

  ['@string.escape'] = { fg = pallet.brown, },

  ['@type'] = { fg = pallet.grey },
  ['@type.builtin'] = { fg = pallet.grey },

  ['@function.builtin'] = { fg = pallet.blue },
  ['@constructor'] = { fg = pallet.blue },

  ['@keyword'] = { fg = pallet.yellow },
  ['@keyword.exception'] = { fg = pallet.yellow },
  ['@repeat'] = { fg = pallet.yellow },
  ['@include'] = { fg = pallet.yellow },
  ['@storageclass'] = { fg = pallet.yellow },
  ['@conditional'] = { fg = pallet.yellow },
  ['@define'] = { fg = pallet.yellow },
  ['@preproc'] = { fg = pallet.yellow },
  ['@tag'] = { fg = pallet.yellow },
  ['@field'] = { fg = pallet.yellow },
  ['@keyword.operator'] = { fg = pallet.yellow },
  ['@keyword.import'] = { fg = pallet.yellow },
  ['@attribute'] = { fg = pallet.yellow },
  ['@keyword.return'] = { fg = pallet.yellow },
  ['@macro'] = { fg = pallet.yellow },
}
