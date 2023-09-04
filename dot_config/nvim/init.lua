local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

plugins = {
  { "folke/flash.nvim", opts = {} },
}
if vim.g.vscode then
  -- VSCode extension
else
  -- ordinary Neovim
end

require("lazy").setup(plugins, opts)

