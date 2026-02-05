# Windows Configuration

AutoHotkey v2 configuration that mirrors the macOS Karabiner + Hammerspoon setup.

## Setup

1. **Install AutoHotkey v2**
   - Download from: https://www.autohotkey.com/
   - Make sure to install v2.0+ (not v1.x)

2. **Run the script**
   - Double-click `autohotkey/main.ahk` to test
   - Or run from command line: `autohotkey.exe main.ahk`

3. **Run on startup** (optional)
   - Press `Win+R`, type `shell:startup`, press Enter
   - Create a shortcut to `main.ahk` in the Startup folder
   - Or use Task Scheduler for more control

## Configuration Files

- **`main.ahk`** - Entry point that loads all modules
- **`hyper.ahk`** - Caps Lock → Hyper key mapping
- **`apps.ahk`** - App launchers (Hyper + key combinations)
- **`hotkeys.ahk`** - Custom hotkeys (hold C/V for copy/paste)

## Key Mappings

See `../KEYBINDINGS.md` for the complete reference. Windows mappings mirror the macOS setup:

- **Caps Lock** → Hyper (when held) or Escape (when tapped)
- **Hold C (750ms)** → Copy (Ctrl+C)
- **Hold V (750ms)** → Paste (Ctrl+V)
- **Hyper+Q** → Quit app (Alt+F4)
- **Hyper+E** → File Explorer
- **Hyper+Enter** → Windows Terminal
- ... and more (see apps.ahk)

## TODO

- [ ] Update app paths in `apps.ahk` to match your Windows installation
- [ ] Test Hyper key combinations
- [ ] Add window management (PowerToys FancyZones or equivalent)
- [ ] Configure startup behavior

## Notes

- AutoHotkey uses different modifier symbols than Karabiner:
  - `^` = Ctrl
  - `!` = Alt
  - `+` = Shift
  - `#` = Win (Windows key)
- The Hyper key setup uses `CapsLock & key` syntax
- Hold-to-copy/paste uses `KeyWait` with timeout detection
