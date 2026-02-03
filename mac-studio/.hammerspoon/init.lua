-- Hammerspoon Configuration
-- Hyper key is defined as Cmd+Alt+Ctrl+Shift (mapped via Karabiner)

local hyper = {"cmd", "alt", "ctrl", "shift"}

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

-- Hyper + Enter: Launch a new Kitty terminal
hs.hotkey.bind(hyper, "return", function()
    hs.task.new("/opt/homebrew/bin/kitty", nil):start()
end)

-- Reload config notification
hs.alert.show("Hammerspoon config loaded")
