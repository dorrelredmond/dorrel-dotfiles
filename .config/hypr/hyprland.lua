------------------
---- MONITORS ----
------------------

-- Default monitor conf
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = 1,
})

-- Primary monitor conf
hl.monitor({
    output   = "HDMI-A-1",
    mode     = "preferred",
    position = "auto-center-right",
    scale    = 1,
})

-- Secondary monitor conf
hl.monitor({
    output   = "DP-1",
    mode     = "preferred",
    position = "auto-center-left",
    scale    = 1,
})

------------------
---- CONFIGS ----
------------------

require("config.env")
require("config.general")
require("config.input")
require("config.misc")
require("config.animations")
require("config.decoration")
require("config.execs")
require("config.rules")
require("config.keybinds")
