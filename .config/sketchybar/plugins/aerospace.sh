#!/usr/bin/env bash
# Save this as ~/.config/sketchybar/plugins/aerospace.sh
# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh

# Get the current focused workspace
FOCUSED_WORKSPACE=$(aerospace list-workspaces --focused)
CONFIG_DIR="$HOME/.config/sketchybar"

# Check if this workspace item should be highlighted
if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  # This is the active workspace - highlight it
  sketchybar --set $NAME \
    background.color=0x88FF00FF \
    label.shadow.drawing=on \
    icon.shadow.drawing=on \
    background.border_width=2
else
  # This is not the active workspace - normal appearance
  sketchybar --set $NAME \
    background.color=0x44FFFFFF \
    label.shadow.drawing=off \
    icon.shadow.drawing=off \
    background.border_width=0
fi

# Update app icons for this workspace
apps=$(aerospace list-windows --workspace "$1" 2>/dev/null | awk -F'|' '{gsub(/^ *| *$/, "", $2); print $2}')

icon_strip=" "
if [ "${apps}" != "" ]; then
  while read -r app; do
    icon_strip+=" $($CONFIG_DIR/plugins/icon_map_fn.sh "$app")"
  done <<<"${apps}"
else
  icon_strip=""
fi

sketchybar --set $NAME label="$icon_strip"