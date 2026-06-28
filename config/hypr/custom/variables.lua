-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
  general = {
    gaps_in          = 0,
    gaps_out         = 2,
    border_size      = 2,
    col              = {
      active_border   = "rgb(7c6f64)",
      inactive_border = "rgb(141617)",
    },
    resize_on_border = true,
    allow_tearing    = false,
    layout           = "dwindle",
  },

  dwindle = {
    preserve_split = true,
  },

  misc = {
    force_default_wallpaper  = 0,
    disable_hyprland_logo    = true,
    disable_splash_rendering = true,
    font_family              = "Inter",
    animate_manual_resizes   = true,
    focus_on_activate        = true,
    middle_click_paste       = false,
  },

  decoration = {
    rounding         = 12,
    rounding_power   = 2,
    active_opacity   = 1.0,
    inactive_opacity = 1.0,
    shadow           = {
      enabled = false,
    },
    blur             = {
      enabled  = true,
      size     = 3,
      passes   = 1,
      vibrancy = 0.1696,
    },
  },

  input = {
    kb_layout    = "us",
    kb_variant   = "",
    kb_model     = "",
    kb_options   = "",
    kb_rules     = "",
    follow_mouse = 1,
    sensitivity  = 0,
    touchpad     = {
      natural_scroll = false,
    },
  },

  xwayland = {
    force_zero_scaling = true,
  },

  -- gesture = {
  --   direction = "horizontal",
  --   --action = "workspace"
  -- },
  --
  -- snap = {
  --   --enabled    = true,
  --   window_gap = 5,
  --   --monitor_gap = 5,
  -- },

  cursor = {
    inactive_timeout  = 5,
    no_warps          = true,
    hide_on_key_press = false,
  },

  ecosystem = {
    no_update_news      = true,
    no_donation_nag     = true,
    enforce_permissions = true,
  },

  animations = {
    enabled = true,
  },
})

hl.animation({ leaf = "windows", enabled = true, speed = 3, bezier = "default", style = "slide" })
hl.animation({ leaf = "layers", enabled = true, speed = 1.5, bezier = "default", style = "slide" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 3, bezier = "default" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "default", style = "slide" })



-- permissions
-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
-- hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
-- hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")
