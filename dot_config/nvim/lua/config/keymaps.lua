-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Add some vscode specific keymaps
if vim.g.vscode then
  vim.api.nvim_create_autocmd("User", {
    pattern = "LazyVimKeymaps",
    callback = function()
      vim.keymap.set(
        "n",
        "<leader><space>",
        "<cmd>call VSCodeNotify('workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup')<CR>"
      )
      vim.keymap.set(
        "n",
        "<leader>fb",
        "<cmd>call VSCodeNotify('workbench.action.quickOpenPreviousRecentlyUsedEditor')<CR>"
      )
      vim.keymap.set("n", "<leader>ff", "<cmd>Find<cr>")
      vim.keymap.set("n", "<leader>/", [[<cmd>call VSCodeNotify('workbench.action.findInFiles')<cr>]])
      vim.keymap.set("n", "<leader>ss", [[<cmd>call VSCodeNotify('workbench.action.gotoSymbol')<cr>]])
      vim.keymap.set("n", "gi", [[<cmd>call VSCodeNotify('editor.action.goToImplementation')<cr>]])
      vim.keymap.set("n", "gI", [[<cmd>call VSCodeNotify('references-view.findImplementations')<cr>]])
      vim.keymap.set("n", "gr", [[<cmd>call VSCodeNotify('editor.action.goToReferences')<cr>]])
      vim.keymap.set("n", "gR", [[<cmd>call VSCodeNotify('references-view.findReferences')<cr>]])
    end,
  })
end
