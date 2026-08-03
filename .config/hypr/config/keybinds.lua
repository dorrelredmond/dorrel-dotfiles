-- Define Variables
local menu = "pkill rofi || true && rofi -show drun -modi drun,filebrowser,run,window"
local fn   = require("utils.functions")

-- Close Active Apps
hl.bind("SUPER + Q", hl.dsp.window.close())

-- Window Keybinds
hl.bind("SUPER + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + CTRL + SHIFT + J", hl.dsp.layout("togglesplit"))    -- dwindle

-- Open File Manager
hl.bind("SUPER + E", hl.dsp.exec_cmd("pcmanfm-qt"))
hl.bind("SUPER + SHIFT + E", hl.dsp.exec_cmd("pcmanfm-qt", { float = true, size = "(monitor_w*0.5) (monitor_h*0.6)", center = true }))
hl.bind("SUPER + M", hl.dsp.exec_cmd("sh ~/.config/hypr/utils/open_yazi.sh"))
hl.bind("SUPER + SHIFT + M", hl.dsp.exec_cmd("sh ~/.config/hypr/utils/open_yazi.sh", { float = true, size = "(monitor_w*0.6) (monitor_h*0.7)", center = true }))

-- Terminal Emulator
hl.bind("SUPER + Return", hl.dsp.exec_cmd("kitty -e fish"))
hl.bind("SUPER + SHIFT + Return", hl.dsp.exec_cmd("kitty -e fish", { float = true, size = "(monitor_w*0.6) (monitor_h*0.7)", center = true }))

-- Lock Screen
hl.bind("SUPER + CTRL + SHIFT + L", hl.dsp.exec_cmd("hyprlock"))

-- Power Management
hl.bind("SUPER + P", hl.dsp.exec_cmd("qs -p ~/.config/quickshell/modules/wlogout/shell.qml"))

-- Screenshots
hl.bind("print", hl.dsp.exec_cmd("grim - | swappy -f -")) -- Capture All
hl.bind("SUPER + print", hl.dsp.exec_cmd("grim -g \"$(slurp -o)\" - | swappy -f -")) -- Capture Screen
hl.bind("SUPER + SHIFT + print", hl.dsp.exec_cmd("grim -g \"$(slurp)\" - | swappy -f -")) -- Capture Area
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("grim -g \"$(slurp)\" - | swappy -f -")) -- Capture Area

-- Rofi Menus
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd(menu)) -- Main Menu (APP Launcher)
hl.bind("SUPER + semicolon", hl.dsp.exec_cmd("rofimoji")) -- Emote Menu
hl.bind("SUPER + CTRL + E", hl.dsp.exec_cmd("rofimoji")) -- Emote Menu
hl.bind("SUPER + CTRL + V", hl.dsp.exec_cmd("cliphist list | rofi -dmenu -theme config-clipboard.rasi | cliphist decode | wl-copy")) -- Clipboard History
hl.bind("SUPER + CTRL + A", hl.dsp.exec_cmd("WINDOW=true rofi -show window"))  -- List and Switch Running Applications
hl.bind("SUPER + CTRL + W", hl.dsp.exec_cmd("rofi -theme config-wallpaper.rasi -show filebrowser -filebrowser-command 'awww img --transition-type any --transition-pos top-right' -filebrowser-directory ~/Pictures/wallpapers/ -- Wallpaper Picker"))

-- Move focus with mainMod + arrow keys
hl.bind("SUPER + left",  hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + up",    hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + down",  hl.dsp.focus({ direction = "down" }))

-- Move focus with mainMod + VIM keys
hl.bind("SUPER + H", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + L", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + K", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + J", hl.dsp.focus({ direction = "down" }))

-- Moving Windows
hl.bind("SUPER + SHIFT + left",  hl.dsp.window.swap({ direction = "left" }))
hl.bind("SUPER + SHIFT + right", hl.dsp.window.swap({ direction = "right" }))
hl.bind("SUPER + SHIFT + up",    hl.dsp.window.swap({ direction = "up" }))
hl.bind("SUPER + SHIFT + down",  hl.dsp.window.swap({ direction = "down" }))

-- Moving Windows with VIM Keys
hl.bind("SUPER + SHIFT + H", hl.dsp.window.swap({ direction = "left" }))
hl.bind("SUPER + SHIFT + L", hl.dsp.window.swap({ direction = "right" }))
hl.bind("SUPER + SHIFT + K", hl.dsp.window.swap({ direction = "up" }))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.swap({ direction = "down" }))

-- Window Resizing
hl.bind("SUPER + CTRL + left",  hl.dsp.window.resize({ x = -50, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + CTRL + right", hl.dsp.window.resize({ x = 50, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + CTRL + up",    hl.dsp.window.resize({ x = 0, y = -50, relative = true }), { repeating = true })
hl.bind("SUPER + CTRL + down",  hl.dsp.window.resize({ x = 0, y = 50, relative = true }), { repeating = true })

-- Window Resizing with VIM Keys
hl.bind("SUPER + CTRL + H", hl.dsp.window.resize({ x = -50, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + CTRL + L", hl.dsp.window.resize({ x = 50, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + CTRL + K", hl.dsp.window.resize({ x = 0, y = -50, relative = true }), { repeating = true })
hl.bind("SUPER + CTRL + J", hl.dsp.window.resize({ x = 0, y = 50, relative = true }), { repeating = true })

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind("SUPER + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind("SUPER + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Special workspace toggles
hl.bind("SUPER + CTRL +  S", fn.toggle("specialws"))
hl.bind("CTRL + SHIFT + Escape", fn.toggle("sysmon"))
hl.bind("SUPER + CTRL + M", fn.toggle("music"))
hl.bind("SUPER + CTRL + D", fn.toggle("communication"))
hl.bind("SUPER + CTRL + R", fn.toggle("todo"))

-- Volume Control
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })

-- Media Control
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- Brightness Control
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

--  Waybar
hl.bind("SUPER + SHIFT + B", hl.dsp.exec_cmd("waybar &"))
hl.bind("SUPER + B", hl.dsp.exec_cmd("pkill -SIGUSR1 waybar"))
hl.bind("SUPER + W", hl.dsp.exec_cmd("pkill -SIGUSR2 waybar"))

-- Misc Keybinds
hl.bind("SUPER + F1", hl.dsp.exec_cmd("~/.config/hypr/utils/gamemode.sh"))
