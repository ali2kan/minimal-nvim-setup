-- This contains mainly Neogit but also a bunch of Git settings
-- like fetching branches with telescope or blaming with fugitive
-- https://github.com/NeogitOrg/neogit
return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "sindrets/diffview.nvim", -- optional - Diff integration

    -- Only one of these is needed, not both.
    "nvim-telescope/telescope.nvim", -- optional
    "ibhagwan/fzf-lua", -- optional
  },
  config = true,
}
