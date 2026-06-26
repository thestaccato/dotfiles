local themes = {}

-- Active theme
-- table.insert(themes, require("plugins.colorschemes.solarized"))
-- table.insert(themes, require("plugins.colorschemes.gruvbox-material"))
-- table.insert(themes, require("plugins.colorschemes.everforest"))
-- table.insert(themes, require("plugins.colorschemes.catppuccin"))
table.insert(themes, require("plugins.colorschemes.kanso"))

-- LazyVim colorscheme configuration
table.insert(themes, {
  "LazyVim/LazyVim",
  opts = {
    colorscheme = "kanso",
  },
})

return themes
