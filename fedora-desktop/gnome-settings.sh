#!/usr/bin/env bash
# GNOME settings for fedora-desktop, applied via gsettings since these live in
# dconf rather than a plain config file. Run manually after a fresh install —
# not wired into any symlink step. Re-running is safe (each line just resets
# the key to the same value).

# --- Caps Lock as an additional Hyper modifier ---
# Mirrors mac-studio's Karabiner Caps Lock -> Hyper (Cmd+Ctrl+Option+Shift)
# setup, though GNOME's Hyper is a distinct XKB modifier rather than a
# synthesized chord of four keys. Confirmed 2026-07-11 via `wev`: Caps Lock
# correctly emits Hyper_L (Mod3) once this is active — no logout/relogin
# needed, applies live.
#
# NOTE: this overwrites the full xkb-options list. If more options are added
# here later, keep them in the same array rather than adding a second
# `gsettings set` call for the same key.
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:hyper']"

# GNOME's own Settings -> Keyboard -> Custom Shortcuts "Set Shortcut" capture
# dialog does NOT recognize Hyper as a bindable modifier (known GNOME
# limitation — pressing Hyper+key there captures nothing). Confirmed
# OpenWhispr's own in-app hotkey recorder has the same limitation (only
# captured <Super>r, not <Hyper>r). Every Hyper+key binding below is written
# directly via gsettings instead, using GTK accelerator syntax (`<Hyper>` is
# valid there even though both capture UIs reject it).

# --- Fixed 9 workspaces (parity with mac-studio's Aerospace 1-9 workspaces) ---
# GNOME defaults to dynamic workspaces (grow/shrink on demand), which doesn't
# give consistent Hyper+7/8/9 behavior until that many workspaces already
# exist. Switched to a fixed count to match the Mac setup exactly.
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 9

# Hyper+1..9 -> switch to workspace 1-9. These are native Mutter actions (not
# custom-keybindings commands), each its own gsettings key that takes a list
# of accelerators — append to the list rather than overwrite it if a default
# already exists (workspace-1 already had <Super>Home from GNOME defaults).
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Super>Home', '<Hyper>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Hyper>2']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Hyper>3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Hyper>4']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Hyper>5']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Hyper>6']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "['<Hyper>7']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "['<Hyper>8']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "['<Hyper>9']"

# --- Hyper+Q: close focused window ---
# Muscle-memory match for Mac's Cmd+Q. Adds <Hyper>q alongside GNOME's
# existing <Alt>F4 on the same native "close" action (not a replacement).
# Note this only closes the focused window — GNOME has no universal
# "quit whole app" concept like macOS's Cmd+Q.
gsettings set org.gnome.desktop.wm.keybindings close "['<Alt>F4', '<Hyper>q']"

# --- App launchers + OpenWhispr toggle, all via custom-keybindings ---
# NOTE: setting custom-keybindings replaces the whole list, it's not additive
# — check what already exists before changing it:
#   gsettings get org.gnome.settings-daemon.plugins.media-keys custom-keybindings
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings \
  "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/openwhispr/', \
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/openwhispr-hyper/', \
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/hyper-brave/', \
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/hyper-obsidian/', \
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/hyper-teams/', \
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/hyper-kitty/', \
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/hyper-files/', \
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/copy-forward/', \
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/paste-forward/']"

base="org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings"

# OpenWhispr dictation toggle, also on Hyper+R (alongside its own app-managed
# <Super>r — this is a second, independent binding running the same command,
# not a replacement). Confirmed working 2026-07-11.
gsettings set $base/openwhispr-hyper/ name "OpenWhispr Toggle (Hyper)"
gsettings set $base/openwhispr-hyper/ command "dbus-send --session --type=method_call --dest=com.openwhispr.App /com/openwhispr/App com.openwhispr.App.Toggle"
gsettings set $base/openwhispr-hyper/ binding "<Hyper>r"

# App launchers pulled over from mac-studio's Hammerspoon Hyper+key set
# (dotfiles/KEYBINDINGS.md) — only the ones with a real Linux equivalent
# installed on this machine. Brave/Obsidian/Teams are Flatpaks here, not
# native binaries, hence `flatpak run <app-id>`.
gsettings set $base/hyper-brave/ name "Launch Brave (Hyper)"
gsettings set $base/hyper-brave/ command "flatpak run com.brave.Browser"
gsettings set $base/hyper-brave/ binding "<Hyper>b"

gsettings set $base/hyper-obsidian/ name "Launch Obsidian (Hyper)"
gsettings set $base/hyper-obsidian/ command "flatpak run md.obsidian.Obsidian"
gsettings set $base/hyper-obsidian/ binding "<Hyper>o"

gsettings set $base/hyper-teams/ name "Launch Teams (Hyper)"
gsettings set $base/hyper-teams/ command "flatpak run com.github.IsmaelMartinez.teams_for_linux"
gsettings set $base/hyper-teams/ binding "<Hyper>t"

gsettings set $base/hyper-kitty/ name "Launch Kitty (Hyper)"
gsettings set $base/hyper-kitty/ command "kitty"
gsettings set $base/hyper-kitty/ binding "<Hyper>Return"

gsettings set $base/hyper-files/ name "Launch Files (Hyper)"
gsettings set $base/hyper-files/ command "nautilus"
gsettings set $base/hyper-files/ binding "<Hyper>e"

# --- Super+C / Super+V forwarded as Ctrl+C / Ctrl+V ---
# Mac-habit Cmd+C/Cmd+V muscle memory lands on Super+C/Super+V here (same
# issue hit under Niri -- see fedora-desktop/.config/niri/config.kdl).
# Super+C was unbound in GNOME already; Super+V was bound to
# toggle-message-tray, aliased with Super+M -- freed Super+V there first
# (Super+M still opens the tray) before claiming it here, so there's no
# shell-vs-custom-keybinding grab conflict.
gsettings set org.gnome.shell.keybindings toggle-message-tray "['<Super>m']"

gsettings set $base/copy-forward/ name "Copy (forwards Ctrl+C on Super+C)"
gsettings set $base/copy-forward/ command "wtype -M ctrl -k c -m ctrl"
gsettings set $base/copy-forward/ binding "<Super>c"

gsettings set $base/paste-forward/ name "Paste (forwards Ctrl+V on Super+V)"
gsettings set $base/paste-forward/ command "wtype -M ctrl -k v -m ctrl"
gsettings set $base/paste-forward/ binding "<Super>v"
