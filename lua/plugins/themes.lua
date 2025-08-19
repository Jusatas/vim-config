return {
  -- Install multiple themes
  { "ellisonleao/gruvbox.nvim" },
  { "folke/tokyonight.nvim" },
  { "catppuccin/nvim", name = "catppuccin" },
  { "rose-pine/neovim", name = "rose-pine" },

  -- Set default theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  -- Add a theme picker command using Telescope
  {
    "nvim-telescope/telescope.nvim",
    config = function(_, opts)
      local builtin = require("telescope.builtin")
      vim.api.nvim_create_user_command("PickTheme", function()
        builtin.colorscheme({ enable_preview = true })
      end, {})
    end,
  },
}
