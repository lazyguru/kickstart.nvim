if vim.fn.executable '/Applications/Obsidian.app' then
  -- conditionally load plugin if /Applications/Obsidan.app is present
  return {
    'epwalsh/obsidian.nvim',
    version = '*', -- recommended, use latest release instead of latest commit
    lazy = true,
    -- ft = 'markdown',
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    event = {
      -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
      -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
      'BufReadPre '
        .. vim.fn.expand '~'
        .. '/Library/Mobile Documents/iCloud~md~obsidian/Documents/Notes/**.md',
      'BufNewFile ' .. vim.fn.expand '~' .. '/Library/Mobile Documents/iCloud~md~obsidian/Documents/Notes/**.md',
    },
    dependencies = {
      -- Required.
      'nvim-lua/plenary.nvim',
    },
    opts = {
      workspaces = {},
    },
  }
end
