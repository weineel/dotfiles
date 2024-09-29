-- buildin
return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader><space>", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
    {
      "<leader>fG",
      function()
        require("telescope.builtin").find_files({
          no_ignore = true,
          hidden = true,
          find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*", "--glob", "!**/node_modules/*" },
        })
      end,
      desc = "Find Files (all files, excluding node_modules/.git)",
    },
  },
}
