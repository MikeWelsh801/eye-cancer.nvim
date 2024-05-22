local pallet = require('eye-cancer.pallet')

return {
  Comment = { fg = pallet.dark_grey, gui = 'bold,italic' },
  String = { fg = pallet.dark_green, gui = 'bold,italic' },
  Character = { fg = pallet.dark_green, gui = 'bold,italic' },
  Keyword = { fg = pallet.yellow, gui = 'bold,italic' },
  Function = { fg = pallet.blue, },
  Literal = { fg = pallet.grey, },
  Operator = { fg = pallet.grey, },
  Variable = { fg = pallet.white, },
  Identifier = { fg = pallet.white, },
  Field = { fg = pallet.grey, },
  Number = { fg = pallet.brown, },
  Boolean = { fg = pallet.brown, },

  ['@variable'] = { fg = pallet.white },
  ['@comment'] = { fg = pallet.green, gui = 'bold,italic' },

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

  ['@function.builtin'] = { fg = pallet.blue },
  ['@constructor'] = { fg = pallet.blue },

  ['@keyword'] = { fg = pallet.yellow },
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
