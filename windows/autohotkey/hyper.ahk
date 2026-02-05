; ============================================================================
; Hyper Key Configuration
; ============================================================================
; Maps Caps Lock to Hyper (Ctrl+Alt+Shift+Win)
; Matches the macOS Karabiner setup where Caps Lock → Hyper
;
; In AutoHotkey:
;   ^ = Ctrl
;   ! = Alt
;   + = Shift
;   # = Win (Windows key)
;   Hyper = ^!+# (all four modifiers)
; ============================================================================

; Caps Lock becomes Hyper when held with other keys, Escape when tapped alone
CapsLock::
{
    ; Wait for Caps Lock to be released or another key to be pressed
    KeyWait "CapsLock"

    ; If no other key was pressed during hold, send Escape
    if (A_PriorKey = "CapsLock") {
        Send "{Esc}"
    }
}

; When Caps Lock is held, it acts as Hyper (Ctrl+Alt+Shift+Win)
; This is handled by the hotkey combinations below using ~CapsLock & key

; Note: Each Hyper+key combination will be defined in apps.ahk
; The ~ prefix allows the CapsLock keypress to pass through
