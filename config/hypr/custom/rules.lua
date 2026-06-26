-- local suppressMaximizeRule = hl.window_rule({
--   name           = "suppress-maximize-events",
--   match          = { class = ".*" },
--
--   suppress_event = "maximize",
-- })
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
  name     = "fix-xwayland-drags",
  match    = {
    class      = "^$",
    title      = "^$",
    xwayland   = true,
    float      = true,
    fullscreen = false,
    pin        = false,
  },
  no_focus = true,
})

hl.window_rule({
  name   = "hyprland-share-picker",
  match  = { class = "hyprland-share-picker" },
  size   = { 759, 435 },
  float  = true,
  center = true,
})

hl.window_rule({
  name  = "file upload",
  match = {
    class = "zen",
    title = "File upload",
  },
  size  = { 595, 405 },
})

hl.window_rule({
  name   = "file management",
  match  = {
    class = "xdg-desktop-portal-gtk",
    title = "^$",
  },
  size   = { 886, 570 },
  float  = true,
  center = true,
})

hl.window_rule({
  match  = {
    title = "Export Image(.*)",
  },
  float  = true,
  center = true,
})

hl.window_rule({
  match  = {
    class = "metadata-editor",
  },
  float  = true,
  center = true,
})

hl.window_rule({
    name         = "hyprwal",
    match        = { class = "^(hyprwal)$" },
    fullscreen   = true,
    center       = true,
    stay_focused = true,
})





-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

hl.layer_rule({
  match        = { namespace = "waybar" },
  blur         = true,
  ignore_alpha = 0,
})

hl.layer_rule({
  match        = { namespace = "notifications" },
  ignore_alpha = 0,
})
