; ============================================================================
; AutoHotkey v2 Configuration - Main Entry Point
; ============================================================================
; This is the main script that loads all other modules.
; Place a shortcut to this file in your Windows Startup folder to run on login.
;
; AutoHotkey v2 Download: https://www.autohotkey.com/
; ============================================================================

#Requires AutoHotkey v2.0

; Set working directory to script location
SetWorkingDir A_ScriptDir

; Include modules
#Include hyper.ahk
#Include hotkeys.ahk
#Include apps.ahk

; Startup notification
TrayTip "AutoHotkey Config Loaded", "Hyper key and custom hotkeys active"
