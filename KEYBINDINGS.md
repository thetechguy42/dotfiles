# Keyboard Shortcuts Reference

Complete mapping of all keyboard shortcuts across Karabiner-Elements, Hammerspoon, and Aerospace.

**Legend:**
- **Hyper** = Cmd+Ctrl+Option+Shift (mapped from Caps Lock and F13 foot pedal via Karabiner)

---

| Key Combination | Action | Mapped In |
|---|---|---|
| **Base Layer Remaps** | | |
| Caps Lock | → Hyper (Cmd+Ctrl+Option+Shift) | Karabiner |
| F13 (foot pedal) | → Hyper (Cmd+Ctrl+Option+Shift) | Karabiner |
| Hold C (750ms) | Copy (Cmd+C) | Karabiner |
| Hold V (750ms) | Paste (Cmd+V) | Karabiner |
| **Hyper + Key** | | |
| Hyper+1–9 | Switch to workspace 1–9 | Aerospace |
| Hyper+B | Launch Brave Browser | Hammerspoon |
| Hyper+E | Open Finder window | Hammerspoon |
| Hyper+F | Fullscreen toggle | Aerospace |
| Hyper+H | Home Row trigger (Cmd+Shift+H) | Karabiner |
| Hyper+I | Launch iMessage | Hammerspoon |
| Hyper+M | Launch Mail | Hammerspoon |
| Hyper+O | Launch Obsidian | Hammerspoon |
| Hyper+Q | Quit app (Cmd+Q) | Karabiner |
| Hyper+R | Wispr Flow start (Cmd+Shift+R) | Karabiner |
| Hyper+S | Enter Aerospace service mode | Aerospace |
| Hyper+T | Launch Microsoft Teams | Hammerspoon |
| Hyper+V | Toggle floating/tiling layout | Aerospace |
| Hyper+W | Launch Safari | Hammerspoon |
| Hyper+X | Wispr Flow stop (Cmd+Shift+X) | Karabiner |
| Hyper+Space | Launch Raycast | Hammerspoon |
| Hyper+Enter | Launch Kitty terminal | Hammerspoon |
| **Window Focus** | | |
| Cmd+Alt+H | Focus left | Aerospace |
| Cmd+Alt+J | Focus down | Aerospace |
| Cmd+Alt+K | Focus up | Aerospace |
| Cmd+Alt+L | Focus right | Aerospace |
| **Window Resize** | | |
| Cmd+Ctrl+H | Resize width -50 | Aerospace |
| Cmd+Ctrl+J | Resize height +50 | Aerospace |
| Cmd+Ctrl+K | Resize height -50 | Aerospace |
| Cmd+Ctrl+L | Resize width +50 | Aerospace |
| **Layout Toggles** | | |
| Alt+, | Toggle accordion layout | Aerospace |
| Alt+/ | Toggle tiles layout | Aerospace |
| **Other** | | |
| Cmd+Shift+C | Reload Aerospace config | Aerospace |
| **Service Mode** (enter with Hyper+S, exit with Esc/Enter) | | |
| 1–9 | Move window to workspace 1–9 | Aerospace |
| Esc / Enter | Exit service mode | Aerospace |
| **Auto-Placement Rules** | | |
| Finder opens | Float | Aerospace |
| Teams opens | → Workspace 4 | Aerospace |
| iMessage opens | → Workspace 4 | Aerospace |
| Brave opens | → Workspace 9 | Aerospace |
| Safari opens | → Workspace 1 | Aerospace |

---

## Configuration Files

- **Karabiner:** `mac-studio/.config/karabiner/karabiner.json`
- **Hammerspoon:** `mac-studio/.hammerspoon/init.lua`
- **Aerospace:** `mac-studio/.config/aerospace/aerospace.toml`

## Notes

- **Hyper+H conflict resolved:** Karabiner intercepts Hyper+H for Home Row before Aerospace sees it. Aerospace focus moved to Cmd+Alt+H/J/K/L temporarily.
- **Wispr Flow / Home Row triggers:** Set in-app shortcuts to match Karabiner translations (Cmd+Shift+R, Cmd+Shift+X, Cmd+Shift+H).
- **Hold C/V for copy/paste:** Uses `to_delayed_action` with 750ms threshold. Tap or fast-type works normally.
