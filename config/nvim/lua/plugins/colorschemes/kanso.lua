return {
  "webhooked/kanso.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("kanso").setup({
      bold = true,
      italics = true,
      compile = false,
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = {},
      typeStyle = {},
      transparent = false,
      dimInactive = false,
      terminalColors = true,
      colors = {
        palette = {},
        theme = { zen = {}, pearl = {}, ink = {}, all = {} },
      },
      overrides = function(colors)
        return {}
      end,
      background = {
        dark = "zen",
        light = "pearl",
      },
      foreground = "default",
      minimal = true,
    })
  end,
}
