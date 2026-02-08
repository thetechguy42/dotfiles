# Keyboard Shortcuts Reference

Complete mapping of all keyboard shortcuts across Karabiner-Elements, Hammerspoon, and Aerospace.

**Legend:**
- **Hyper** = Cmd+Ctrl+Option+Shift (mapped from Caps Lock and IKEGO foot pedal via Karabiner)

---

## Foot Pedals

### Elgato Stream Deck Pedal (3 pedals)
**Note:** These bypass Karabiner - configured directly in Stream Deck software

| Pedal | Sends | Action | Notes |
|---|---|---|---|
| **Left** | F14 | Toggle Talon speech recognition | Configured in foot_pedal.talon |
| **Middle** | Cmd+Ctrl+Alt+Shift+Space | Launch Raycast | Direct shortcut (Hyper+Space) |
| **Right** | Cmd+Shift+R | Toggle Wispr Flow dictation | Direct shortcut |

### IKEGO L Single Foot Pedal
**Note:** This goes through Karabiner transformation

| Pedal | Sends | Transforms To | Action |
|---|---|---|---|
| Single pedal | F13 | Hyper (Cmd+Ctrl+Alt+Shift) | Acts as Hyper modifier key |

**Configuration Files:**
- Elgato pedals: Configured in Stream Deck software
- IKEGO pedal: `mac-studio/.talon/user/personal/foot_pedal.talon` (F14 only)
- Karabiner: F13 → Hyper transformation

---

| Key Combination | Action | Mapped In |
|---|---|---|
| **Base Layer Remaps** | | |
| Caps Lock | → Hyper (Cmd+Ctrl+Option+Shift) | Karabiner |
| F13 (IKEGO pedal) | → Hyper (Cmd+Ctrl+Option+Shift) | Karabiner |
| F14 (Elgato left pedal) | Toggle Talon speech | Talon |
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
- **Talon:** `mac-studio/.talon/user/personal/foot_pedal.talon`
- **Stream Deck:** Configured in Elgato Stream Deck software

## Notes

- **Hyper+H conflict resolved:** Karabiner intercepts Hyper+H for Home Row before Aerospace sees it. Aerospace focus moved to Cmd+Alt+H/J/K/L temporarily.
- **Wispr Flow / Home Row triggers:** Set in-app shortcuts to match Karabiner translations (Cmd+Shift+R, Cmd+Shift+X, Cmd+Shift+H).
- **Hold C/V for copy/paste:** Uses `to_delayed_action` with 750ms threshold. Tap or fast-type works normally.
- **Foot pedals:** Elgato Stream Deck Pedal bypasses Karabiner, so shortcuts configured directly. IKEGO pedal uses Karabiner F13→Hyper transformation.
- **Talon voice toggle:** Can use voice command "go to sleep"/"wake up" OR F14 via Elgato left pedal.
