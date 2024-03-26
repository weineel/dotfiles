return {
  -- disable vscode
  { "ellisonleao/gruvbox.nvim", enabled = not vim.g.vscode },
  { "folke/tokyonight.nvim", enabled = not vim.g.vscode },
  { "echasnovski/mini.indentscope", enabled = not vim.g.vscode },
  { "lukas-reineke/indent-blankline.nvim", enabled = not vim.g.vscode },

  -- disable
  { "mini.surround", enabled = false },
}
