return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    window = {
      border = "single", -- none, single, double, shadow
      color = "red",
      position = "bottom", -- bottom, top
      margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]. When between 0 and 1, will be treated as a percentage of the screen size.
      padding = { 1, 2, 1, 2 }, -- extra window padding [top, right, bottom, left]
      winblend = 0, -- value between 0-100 0 for fully opaque and 100 for fully transparent
      zindex = 1000, -- positive value to position WhichKey above other floating windows.
    },
    icons = {
      breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
      separator = "", -- symbol used between a key and it's label", -- symbol used between a key and it's label➜", -- symbol used between a key and it's label➜", -- symbol used between a key and it's label➜➜", -- symbol used between a key and it's label", -- symbol used between a key and it's label", -- symbol used between a key and it's label
      group = "➕", -- symbol prepended to a group
    },
  },
}
