-- Hammerspoon Configuration
-- Hyper key is defined as Cmd+Alt+Ctrl+Shift (mapped via Karabiner)

local hyper = {"cmd", "alt", "ctrl", "shift"}

-- ---------------------------------------------------------------------------
-- App-specific trigger translations are handled in Karabiner, not here.
-- Karabiner operates at the driver level, so these work regardless of
-- which app has focus or what event taps are active (e.g. Wispr Flow
-- while recording). If these stop working, check IN-APP shortcut settings:
--   Wispr Flow:  Start = Cmd+Shift+R  |  Stop  = Cmd+Shift+X
--   Home Row:    Trigger = Cmd+Shift+H
-- ---------------------------------------------------------------------------

-- Hyper + I: Launch iMessage
hs.hotkey.bind(hyper, "i", function()
    hs.application.launchOrFocus("Messages")
end)

-- Hyper + T: Launch Microsoft Teams
hs.hotkey.bind(hyper, "t", function()
    hs.application.launchOrFocus("Microsoft Teams")
end)

-- Hyper + E: Open new Finder window (floats via Aerospace)
hs.hotkey.bind(hyper, "e", function()
    hs.task.new("/usr/bin/open", nil, {"/Users/jamestucker"}):start()
end)

-- Hyper + M: Launch Mail
hs.hotkey.bind(hyper, "m", function()
    hs.application.launchOrFocus("Mail")
end)

-- Hyper + O: Launch Obsidian
hs.hotkey.bind(hyper, "o", function()
    hs.application.launchOrFocus("Obsidian")
end)

-- Hyper + W: Launch Safari
hs.hotkey.bind(hyper, "w", function()
    hs.application.launchOrFocus("Safari")
end)

-- Hyper + B: Launch Brave Browser
hs.hotkey.bind(hyper, "b", function()
    hs.application.launchOrFocus("Brave Browser")
end)

-- Hyper + Space: Launch Raycast
hs.hotkey.bind(hyper, "space", function()
    hs.application.launchOrFocus("Raycast")
end)

-- Hyper + Enter: Launch a new Kitty terminal
hs.hotkey.bind(hyper, "return", function()
    hs.task.new("/opt/homebrew/bin/kitty", nil):start()
end)

-- Reload config notification
hs.alert.show("Hammerspoon config loaded")
