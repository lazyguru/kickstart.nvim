return {
  'dense-analysis/ale',
  config = function()
    -- Configuration goes here
    local g = vim.g
    g.ale_linters = {
      go = { 'gopls' },
      python = { 'flake8' },
      lua = { 'luacheck' },
      javascript = { 'eslint' },
      typescript = { 'eslint' },
      sh = { 'shellcheck' },
      yaml = { 'yamllint' },
      json = { 'jsonlint' },
      markdown = { 'markdownlint' },
      vim = { 'vint' },
    }
  end,
}
