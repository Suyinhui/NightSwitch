# NightSwitch

[🇬🇧 English](README.md) | [🇨🇳 中文](README.zh-CN.md)

A lightweight AutoHotkey script to quickly toggle Windows light/dark mode with a single hotkey.

---

## Overview

NightSwitch is a simple and efficient tool that allows you to instantly switch between Windows light mode and dark mode.

Just press **F10**, and the theme will change immediately — no need to navigate through system settings.

---

## Features

- One-key toggle between light and dark mode (F10)
- Fast response via registry modification
- Soft refresh (no Explorer restart, no screen flicker)
- Lightweight and minimal
- Built with AutoHotkey v1

---

## Usage

### 1️⃣ Install AutoHotkey  
Download from the official website:  
https://www.autohotkey.com/

### 2️⃣ Download the script  
Get the `.ahk` file from this repository

### 3️⃣ Run the script  
Double-click to run (or right-click → Run with AutoHotkey)

---

### Hotkey

- `F10` → Toggle Windows light/dark mode

---

## How It Works

This script modifies the Windows registry:


HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize


Related values:

- `AppsUseLightTheme`
- `SystemUsesLightTheme`

After modification, a system message (`WM_SETTINGCHANGE`) is broadcast to refresh the UI without restarting Explorer.

---

## Notes

- Some applications (e.g. Microsoft Word) need to be set to "Follow system" to fully apply dark mode
- This script does NOT restart Explorer, to avoid screen flicker or closing windows
- Works on Windows 10 / Windows 11

---
