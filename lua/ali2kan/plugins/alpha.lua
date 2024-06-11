return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    local fortune = require("alpha.fortune")


    -- Define and set highlight groups for each logo line
    vim.api.nvim_set_hl(0, "AlphaHeader1", { fg = "#5c6370" }) -- Dark Gray
    vim.api.nvim_set_hl(0, "AlphaHeader2", { fg = "#857b7b" }) -- Medium Dark Gray
    vim.api.nvim_set_hl(0, "AlphaHeader3", { fg = "#abb2bf" }) -- Light Gray
    vim.api.nvim_set_hl(0, "AlphaHeader4", { fg = "#dcdcdc" }) -- Very Light Gray
    vim.api.nvim_set_hl(0, "AlphaHeader5", { fg = "#ffffff" }) -- White
    vim.api.nvim_set_hl(0, "AlphaHeaderOrange", { fg = "#CC5500" }) -- Orange

    -- Set header with the highlight group
    dashboard.section.header.type = "group"
    dashboard.section.header.val = {
      {
        type = "text",
        val = "██████╗ ██████╗  ██████╗ ██╗  ██╗██╗███╗   ███╗",
        opts = { hl = "AlphaHeader1", shrink_margin = false, position = "center" },
      },
      {
        type = "text",
        val = "██╔══██╗██╔══██╗██╔═══██╗╚██╗██╔╝██║████╗ ████║",
        opts = { hl = "AlphaHeaderOrange", shrink_margin = false, position = "center" },
      },
      {
        type = "text",
        val = "██████╔╝██████╔╝██║   ██║ ╚███╔╝ ██║██╔████╔██║",
        opts = { hl = "AlphaHeader2", shrink_margin = false, position = "center" },
      },
      {
        type = "text",
        val = "██╔═══╝ ██╔══██╗██║   ██║ ██╔██╗ ██║██║╚██╔╝██║",
        opts = { hl = "AlphaHeader3", shrink_margin = false, position = "center" },
      },
      {
        type = "text",
        val = "██║     ██║  ██║╚██████╔╝██╔╝ ██╗██║██║ ╚═╝ ██║",
        opts = { hl = "AlphaHeader4", shrink_margin = false, position = "center" },
      },
      {
        type = "text",
        val = "╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝╚═╝     ╚═╝",
        opts = { hl = "AlphaHeader5", shrink_margin = false, position = "center" },
      },
    }





    -- -- Define and set highlight groups for each logo line
    -- vim.api.nvim_set_hl(0, "AlphaHeaderDarkGray", { fg = "#5c6370" }) -- Dark Gray
    -- vim.api.nvim_set_hl(0, "AlphaHeaderLightGray", { fg = "#abb2bf" }) -- Light Gray
    -- vim.api.nvim_set_hl(0, "AlphaHeaderWhite", { fg = "#ffffff" }) -- White
    -- vim.api.nvim_set_hl(0, "AlphaHeaderOrange", { fg = "#CC5500" }) -- Orange

    -- -- Set header with the highlight group
    -- dashboard.section.header.type = "group"
    -- dashboard.section.header.val = {
    --   {
    --     type = "text",
    --     val = "                                                     ",
    --     opts = { hl = "AlphaHeaderDarkGray", shrink_margin = false, position = "center" },
    --   },
    --   {
    --     type = "text",
    --     val = " ██████╗ ██╗  ██╗ █████╗ ███╗   ██╗██╗   ██╗██╗███╗   ███╗ ",
    --     opts = { hl = "AlphaHeaderOrange", shrink_margin = false, position = "center" },
    --   },
    --   {
    --     type = "text",
    --     val = " ╚════██╗██║ ██╔╝██╔══██╗████╗  ██║██║   ██║██║████╗ ████║ ",
    --     opts = { hl = "AlphaHeaderLightGray", shrink_margin = false, position = "center" },
    --   },
    --   {
    --     type = "text",
    --     val = "  █████╔╝█████╔╝ ███████║██╔██╗ ██║██║   ██║██║██╔████╔██║ ",
    --     opts = { hl = "AlphaHeaderWhite", shrink_margin = false, position = "center" },
    --   },
    --   {
    --     type = "text",
    --     val = " ██╔═══╝ ██╔═██╗ ██╔══██║██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    --     opts = { hl = "AlphaHeaderDarkGray", shrink_margin = false, position = "center" },
    --   },
    --   {
    --     type = "text",
    --     val = " ███████╗██║  ██╗██║  ██║██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    --     opts = { hl = "AlphaHeaderOrange", shrink_margin = false, position = "center" },
    --   },
    --   {
    --     type = "text",
    --     val = " ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    --     opts = { hl = "AlphaHeaderLightGray", shrink_margin = false, position = "center" },
    --   },
    -- }

    -- Set header
    -- dashboard.section.header.val = {

    --   "                                                     ",
    --   " ██████╗ ██╗  ██╗ █████╗ ███╗   ██╗██╗   ██╗██╗███╗   ███╗ ",
    --   " ╚════██╗██║ ██╔╝██╔══██╗████╗  ██║██║   ██║██║████╗ ████║ ",
    --   "  █████╔╝█████╔╝ ███████║██╔██╗ ██║██║   ██║██║██╔████╔██║ ",
    --   " ██╔═══╝ ██╔═██╗ ██╔══██║██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    --   " ███████╗██║  ██╗██║  ██║██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    --   " ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    --   "                                                     ",

      -- "                                                     ",
      -- "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      -- "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      -- "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      -- "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      -- "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      -- "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      -- "                                                     ",
    -- }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Set footer
    local fortune = require("alpha.fortune")
    dashboard.section.footer.val = fortune()

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}

-- TODO: do something great
-- HACK:
-- BUG:
