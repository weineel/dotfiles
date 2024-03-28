-- buildin
return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader><space>", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
    -- { "<leader>fG", "<cmd>Telescope find_files<cr>", desc = "Find Files (all files)" }
  },
}
