-- Hammerspoon Configuration
-- Hyper key is defined as Cmd+Alt+Ctrl+Shift (mapped via Karabiner)

local hyper = {"cmd", "alt", "ctrl", "shift"}

-- Hyper + I: Launch iMessage
hs.hotkey.bind(hyper, "i", function()
    hs.application.launchOrFocus("Messages")
end)

-- Reload config notification
hs.alert.show("Hammerspoon config loaded")
