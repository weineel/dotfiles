return {
  "monaqa/dial.nvim",
  vscode = true,
  config = function()
    -- config
    local augend = require("dial.augend")
    require("dial.config").augends:register_group{
      default = {
        -- uppercase hex number (0x1A1A, 0xEEFE, etc.)
        augend.integer.alias.decimal,
        augend.integer.alias.hex,
        augend.date.alias["%Y/%m/%d"],
        augend.date.alias["%Y-%m-%d"],
        augend.date.alias["%m/%d"],
        augend.date.alias["%H:%M"],
        augend.constant.alias.ja_weekday_full,
        augend.constant.alias.bool,
        augend.constant.new {
          elements = {"and", "or"},
          word = true, -- if false, "sand" is incremented into "sor", "doctor" into "doctand", etc. default: true
          cyclic = true,  -- "or" is incremented into "and". default: true
        },
        augend.constant.new {
          elements = {"&&", "||"},
          word = false,
        },
        augend.constant.new {
          elements = {"const", "let"},
        },
      },
    }

    -- keymap
    vim.keymap.set("n", "<C-m>", function()
      require("dial.map").manipulate("increment", "normal")
    end)
    vim.keymap.set("n", "<C-x>", function()
        require("dial.map").manipulate("decrement", "normal")
    end)
    vim.keymap.set("n", "g<C-m>", function()
        require("dial.map").manipulate("increment", "gnormal")
    end)
    vim.keymap.set("n", "g<C-x>", function()
        require("dial.map").manipulate("decrement", "gnormal")
    end)
    vim.keymap.set("v", "<C-m>", function()
        require("dial.map").manipulate("increment", "visual")
    end)
    vim.keymap.set("v", "<C-x>", function()
        require("dial.map").manipulate("decrement", "visual")
    end)
    vim.keymap.set("v", "g<C-m>", function()
        require("dial.map").manipulate("increment", "gvisual")
    end)
    vim.keymap.set("v", "g<C-x>", function()
        require("dial.map").manipulate("decrement", "gvisual")
    end)
  end,
}
