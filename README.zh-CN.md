# NightSwitch

[🇬🇧 English](README.md) | [🇨🇳 中文](README.zh-CN.md)

一个轻量级的 AutoHotkey 脚本，通过快捷键一键切换 Windows 明暗模式。

---

## 项目简介

NightSwitch 是一个简单高效的小工具，只需按下 **F10**，即可瞬间完成 Windows 浅色模式和深色模式主题切换。

---

## 功能特性

- 一键切换深色 / 浅色模式（F10）
- 基于注册表修改，响应迅速
- 软刷新界面（无需重启资源管理器，无闪屏）
- 轻量无依赖，占用极低
- 基于 AutoHotkey v1 编写

---

## 使用方法

### 1️⃣ 安装 AutoHotkey
前往官网下载安装：  
https://www.autohotkey.com/

### 2️⃣ 下载脚本
获取本仓库中的 `.ahk` 文件

### 3️⃣ 运行脚本
双击运行即可（或右键使用 AutoHotkey 运行）

---

### 快捷键说明

- `F10` → 切换 Windows 明暗模式

---

## 实现原理

本脚本通过修改 Windows 注册表实现主题切换：


HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize


涉及字段：

- `AppsUseLightTheme`
- `SystemUsesLightTheme`

修改后通过发送系统消息（`WM_SETTINGCHANGE`）通知系统刷新界面，从而在不重启资源管理器的情况下应用主题变化。

---

## 注意事项

- word等应用需要设置 跟随系统设置 才能完全应用深色模式
- 本脚本不会强制重启资源管理器，以避免屏幕闪烁或窗口关闭
- 适用于 Windows 10 / Windows 11

---
