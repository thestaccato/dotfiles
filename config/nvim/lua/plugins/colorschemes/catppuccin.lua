return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  opts = {
    flavour = "mocha",
    color_overrides = {
      mocha = {
        base = "#11111b",
        mantle = "#181825",
        crust = "#1e1e2e",
      },
    },
    transparent_background = false,
    term_colors = true,
    integrations = {
      telescope = true,
      neotree = true,
      treesitter = true,
      notify = true,
      mini = true,
    },
  },
}
