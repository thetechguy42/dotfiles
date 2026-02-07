# TODO: Elgato Foot Pedal Setup

## Goal
Configure Elgato Stream Deck Pedal (3 pedals) for hands-free control of Talon, Wispr Flow, and Hyper key.

## Current Setup Analysis

**Karabiner-Elements Configuration:**
- ✅ F13 → Hyper key (Cmd+Ctrl+Alt+Shift) - ALREADY CONFIGURED
- ✅ Caps Lock → Hyper key (also configured)
- Wispr Flow: Hyper+R (start), Hyper+X (stop)
- Home Row: Hyper+H

**Hammerspoon:**
- Hyper key app launchers: I (Messages), T (Teams), E (Finder), M (Mail), O (Obsidian), W (Safari), B (Brave), Space (Raycast), Enter (Kitty)

**Aerospace:**
- Hyper key bindings: 1-9 (workspaces), S (service mode), F (fullscreen), V (layout toggle)
- Focus keys moved to Cmd+Alt due to Hyper+H conflict

## Tool Decision
**Option A: Stream Deck Software Only (Recommended - FREE!)**
Since F13 is already mapped to Hyper in Karabiner:
- ✅ No need for BetterTouchTool!
- ✅ Stream Deck can send F13/F14/F15 directly
- ✅ Karabiner handles F13 → Hyper transformation
- ✅ Simpler setup, fewer moving parts

**Option B: BetterTouchTool ($25)**
Only if you want:
- Advanced Stream Deck integration features
- Conditional logic for pedal triggers
- Future trackpad gesture customization

## Pedal Configuration Plan

| Pedal | Stream Deck Sends | Karabiner Transforms | Actual Result | Config Needed |
|-------|------------------|---------------------|---------------|---------------|
| **Left** | F14 | → (none) | Talon toggle | New Talon config |
| **Middle** | F13 | → **Hyper** ✅ | Hyper modifier | Already done! |
| **Right** | F15 | → Hyper+R | Wispr Flow toggle | New Karabiner rule |

**Note:** Hyper+R toggles Wispr Flow (discovered it's toggle, not just start!)

## Setup Steps (When Ready)

### 1. Install Elgato Stream Deck Software
- [ ] Download from Elgato website
- [ ] Install and launch Stream Deck software
- [ ] Connect Elgato foot pedal via USB
- [ ] Verify pedals are detected

### 2. Configure Left Pedal → Talon Toggle (F14)
- [ ] In Stream Deck: Map left pedal to F14 hotkey
- [ ] Create `~/dotfiles/mac-studio/.talon/user/personal/foot_pedal.talon` with:
  ```talon
  key(f14): speech.toggle()
  ```
- [ ] Test: Press left pedal to toggle Talon on/off
- [ ] Verify Talon status indicator changes

### 3. Configure Middle Pedal → Hyper Key (F13)
**Already configured in Karabiner! Just map the pedal:**
- [ ] In Stream Deck: Map middle pedal to F13 hotkey
- [ ] Karabiner will automatically transform F13 → Hyper (Cmd+Ctrl+Alt+Shift)
- [ ] Test with existing shortcuts:
  - [ ] Hyper+1 (Aerospace workspace 1)
  - [ ] Hyper+I (Launch Messages via Hammerspoon)
  - [ ] Hyper+Space (Launch Raycast via Hammerspoon)
- [ ] Verify it works as a modifier (hold middle pedal + press keyboard key)

### 4. Configure Right Pedal → Wispr Flow Toggle (F15)
**Note:** Hyper+R toggles Wispr Flow (start/stop with same shortcut)

**Option A: Via Karabiner (Recommended - Consistent Pattern)**
- [ ] Add to `karabiner.json` complex_modifications rules:
  ```json
  {
    "description": "F15 → Hyper+R (Wispr Flow toggle)",
    "manipulators": [{
      "from": {
        "key_code": "f15",
        "modifiers": { "optional": ["any"] }
      },
      "to": [{
        "key_code": "r",
        "modifiers": ["left_command", "left_control", "left_option", "left_shift"]
      }],
      "type": "basic"
    }]
  }
  ```
- [ ] In Stream Deck: Map right pedal to F15 hotkey
- [ ] Test: Press right pedal to toggle Wispr Flow on/off
- [ ] Verify dictation starts and stops with repeated presses

**Option B: Direct from Stream Deck (Simpler Setup)**
- [ ] In Stream Deck: Map right pedal to Hyper+R (Cmd+Ctrl+Alt+Shift+R)
- [ ] Test: Press right pedal to toggle Wispr Flow
- [ ] Note: Less consistent with other pedals, but works fine

### 5. Fine-Tuning
- [ ] Test all three pedals together in real workflow
- [ ] Verify no conflicts with existing Karabiner rules
- [ ] Test Hyper key combos while pedal is held down
- [ ] Adjust pedal sensitivity in Stream Deck software if needed
- [ ] Consider hiding Stream Deck floating action bar (right-click tray icon)
- [ ] Document any additional configurations in this file

### 6. Optional: BetterTouchTool (If Needed Later)
Only install if you discover you need:
- [ ] More advanced pedal logic (sequences, conditions, etc.)
- [ ] Trackpad gesture customization
- [ ] Mouse button remapping
- [ ] Window snapping features beyond Aerospace

## Technical Notes

### Why F13-F15?
- These function keys (F13-F24) don't exist on standard keyboards
- Zero chance of conflicts with existing shortcuts
- Perfect for foot pedal/external device mapping
- **F13 is already your Hyper key!** (via Karabiner)

### Existing Tool Stack & Responsibilities
- **Karabiner-Elements** ✅ - Low-level key remapping (F13 → Hyper, Caps Lock → Hyper, hold C/V)
- **Hammerspoon** ✅ - App launcher shortcuts (Hyper+I, T, E, M, O, W, B, Space, Enter)
- **Aerospace** ✅ - Window management (Hyper+1-9, S, F, V)
- **Talon** ✅ - Voice commands (will add F14 toggle)
- **Wispr Flow** ✅ - AI dictation (Hyper+R start, Hyper+X stop)
- **Stream Deck Software** 🆕 - Foot pedal to F-key mapping
- **BetterTouchTool** ❓ - Optional, only if needed later

### Current Hyper Key Bindings (Don't Conflict!)
**Karabiner:**
- Hyper+Q → Cmd+Q (quit app)
- Hyper+R → Cmd+Shift+R (Wispr Flow start)
- Hyper+X → Cmd+Shift+X (Wispr Flow stop)
- Hyper+H → Cmd+Shift+H (Home Row)

**Hammerspoon:**
- Hyper+I → Messages
- Hyper+T → Teams
- Hyper+E → Finder
- Hyper+M → Mail
- Hyper+O → Obsidian
- Hyper+W → Safari
- Hyper+B → Brave
- Hyper+Space → Raycast
- Hyper+Enter → Kitty

**Aerospace:**
- Hyper+1-9 → Workspaces
- Hyper+S → Service mode
- Hyper+F → Fullscreen
- Hyper+V → Layout toggle

**Available for future use:**
A, C, D, G, J, K, L, N, P, U, Y, Z, etc.

## Resources
- BetterTouchTool docs: https://docs.folivora.ai/
- Elgato Stream Deck Pedal guide: https://help.elgato.com/hc/en-us/articles/4422759744397
- Talon speech toggle: https://talon.wiki/Basic%20Usage/basic_usage/
- Wispr Flow hotkey setup: https://roadmap.wisprflow.ai/changelog/keyboard-select-your-own-keyboard-shortcut

## Questions to Answer During Setup
- [ ] Does F13 from the pedal properly trigger Hyper key transformation in Karabiner?
- [ ] Can you hold middle pedal (F13/Hyper) and press keyboard keys simultaneously?
- [ ] ✅ ~~Does Wispr Flow have a single toggle?~~ **YES - Hyper+R toggles!**
- [ ] Does F15 → Hyper+R work reliably for Wispr Flow toggle?
- [ ] Is there any latency with foot pedal triggers?
- [ ] Do pedals work well with shoes on/off?
- [ ] Should pedals have visual/audio feedback enabled?
- [ ] Do you need BetterTouchTool at all, or is Stream Deck software sufficient?

---

**Status**: Not started - waiting for physical pedal setup
**Created**: 2026-02-07
**Priority**: Medium (quality of life improvement)
