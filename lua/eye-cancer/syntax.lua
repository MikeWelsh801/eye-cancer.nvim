local pallet = require('eye-cancer.pallet')

return {
  Comment = { fg = pallet.green, gui = 'bold,italic' },
  String = { fg = pallet.green, gui = 'bold,italic' },
  Character = { fg = pallet.green, gui = 'bold,italic' },
  Keyword = { fg = pallet.yellow, gui = 'bold,italic' },
  Function = { fg = pallet.dark_green, },
  Literal = { fg = pallet.grey, },
  Operator = { fg = pallet.grey, },
  Variable = { fg = pallet.white, },
  Identifier = { fg = pallet.white, },
  Field = { fg = pallet.grey, },
  Number = { fg = pallet.brown, },
  Boolean = { fg = pallet.brown, },

  ['@string.escape'] = { fg = pallet.brown, },

  ['@variable'] = { fg = pallet.white },
  ['@variable.member'] = { fg = pallet.off_white },
  ['@variable.builtin'] = { fg = pallet.off_white },
  ['@character.special'] = { fg = pallet.off_white },


  ['@type'] = { fg = pallet.grey },
  ['@constant'] = { fg = pallet.off_white },
  ['@constant.builtin'] = { fg = pallet.off_white },
  ['@label'] = { fg = pallet.off_white },

  ['@function.builtin'] = { fg = pallet.dark_green },
  ['@function.macro'] = { fg = pallet.off_white },
  ['@constructor'] = { fg = pallet.dark_green },

  ['@keyword'] = { fg = pallet.yellow },
  ['@repeat'] = { fg = pallet.yellow },
  ['@include'] = { fg = pallet.yellow },
  ['@preproc'] = { fg = pallet.yellow },
  ['@tag'] = { fg = pallet.yellow },
  ['@tag.attribute'] = { fg = pallet.off_white },
  ['@field'] = { fg = pallet.yellow },
  ['@keyword.operator'] = { fg = pallet.yellow },
  ['@keyword.import'] = { fg = pallet.yellow },
  ['@attribute'] = { fg = pallet.yellow },
  ['@keyword.return'] = { fg = pallet.yellow },
  ['@macro'] = { fg = pallet.yellow },
}
