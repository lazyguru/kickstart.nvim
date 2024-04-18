-- statusline
-- https://github.com/beauwilliams/statusline.lua

return {
  'beauwilliams/statusline.lua',
  dependencies = { -- optional packages
    'kosayoda/nvim-lightbulb',
  },
  setup = function()
    local statusline = require 'statusline'
    if not statusline then
      return
    end
    statusline.enable = true
    statusline.lsp_diagnostics = true
    statusline.ale_diagnostics = false
  end,
}
