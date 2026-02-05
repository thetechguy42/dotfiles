; ============================================================================
; Custom Hotkeys
; ============================================================================
; Hold C/V for copy/paste (matching macOS Karabiner setup)
; Uses KeyWait with timeout to detect hold duration
; ============================================================================

; Hold C for 750ms → Copy (Ctrl+C)
; Tap C → types "c" normally
$c::
{
    ; Wait for C to be released or 750ms timeout
    result := KeyWait("c", "T0.75")

    if (result = 0) {
        ; Timeout expired (key held for 750ms) → Copy
        Send "^c"
        KeyWait "c"  ; Wait for key release
    } else {
        ; Key released before timeout → Type "c"
        Send "c"
    }
}

; Hold V for 750ms → Paste (Ctrl+V)
; Tap V → types "v" normally
$v::
{
    ; Wait for V to be released or 750ms timeout
    result := KeyWait("v", "T0.75")

    if (result = 0) {
        ; Timeout expired (key held for 750ms) → Paste
        Send "^v"
        KeyWait "v"  ; Wait for key release
    } else {
        ; Key released before timeout → Type "v"
        Send "v"
    }
}

; Note: The $ prefix prevents the hotkey from triggering itself
; and allows the script to send the key without causing a loop
