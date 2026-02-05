; ============================================================================
; App Launchers (Hyper + Key)
; ============================================================================
; Translates Hammerspoon app launcher bindings to AutoHotkey
; Format: CapsLock & key runs the application
;
; TODO: Update paths to match your Windows installation locations
; ============================================================================

; Hyper+B: Launch Browser (Brave)
; TODO: Update path to your Brave installation
CapsLock & b::
{
    Run "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"
}

; Hyper+E: Open File Explorer (equivalent to Finder on Mac)
CapsLock & e::
{
    Run "explorer.exe"
}

; Hyper+I: Launch messaging app
; TODO: Update to your preferred messaging app path
; CapsLock & i::
; {
;     Run "C:\Program Files\...\YourMessagingApp.exe"
; }

; Hyper+M: Launch Mail app
; TODO: Update to your mail app path (Outlook, Thunderbird, etc.)
; CapsLock & m::
; {
;     Run "outlook.exe"
; }

; Hyper+O: Launch Obsidian
; TODO: Update path to your Obsidian installation
; CapsLock & o::
; {
;     Run "C:\Users\YourUsername\AppData\Local\Obsidian\Obsidian.exe"
; }

; Hyper+T: Launch Microsoft Teams
CapsLock & t::
{
    Run "ms-teams:"  ; Protocol handler, or use full path
}

; Hyper+W: Launch Safari equivalent (Edge or Chrome)
; TODO: Update to your preferred browser
CapsLock & w::
{
    Run "msedge.exe"  ; or "chrome.exe"
}

; Hyper+Space: Launch app launcher (PowerToys Run or equivalent)
; Win+Space typically opens language switcher, so using Hyper+Space for launcher
CapsLock & Space::
{
    ; PowerToys Run is typically Alt+Space by default
    Send "!{Space}"
}

; Hyper+Enter: Launch terminal (Windows Terminal)
CapsLock & Enter::
{
    Run "wt.exe"  ; Windows Terminal
}

; Hyper+Q: Quit active application (Alt+F4 equivalent)
CapsLock & q::
{
    Send "!{F4}"
}
