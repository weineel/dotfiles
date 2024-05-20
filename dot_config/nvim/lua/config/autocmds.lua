-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local map = vim.keymap.set

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "vue",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    map(
      "n",
      "<leader>vt",
      ":call search('^<template', 'bw')<CR>",
      { desc = "Go to Vue template", noremap = true, silent = true }
    )
    map(
      "n",
      "<leader>vs",
      ":call search('^<script', 'bw')<CR>",
      { desc = "Go to Vue script", noremap = true, silent = true }
    )
    map(
      "n",
      "<leader>vd",
      ":call search('^<style', 'bw')<CR>",
      { desc = "Go to Vue style", noremap = true, silent = true }
    )
  end,
})
