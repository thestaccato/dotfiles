return {
  'maxmx03/solarized.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function(_, opts)
    vim.o.termguicolors = true
    require('solarized').setup(opts)
  end,
}
