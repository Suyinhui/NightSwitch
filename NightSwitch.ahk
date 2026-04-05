#SingleInstance Force

F10::
    ; 读取当前模式
    RegRead, AppsUseLightTheme, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, AppsUseLightTheme

    if (ErrorLevel)
        AppsUseLightTheme := 1

    if (AppsUseLightTheme = 1) {
        ; 深色模式
        RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, AppsUseLightTheme, 0
        RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, SystemUsesLightTheme, 0
        ToolTip, 已切换到深色模式
    } else {
        ; 浅色模式
        RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, AppsUseLightTheme, 1
        RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, SystemUsesLightTheme, 1
        ToolTip, 已切换到浅色模式
    }

    ; 增强刷新（不重启 Explorer）
    DllCall("user32\SendMessageTimeout"
        , "Ptr", 0xFFFF
        , "UInt", 0x001A
        , "Ptr", 0
        , "Str", "ImmersiveColorSet"
        , "UInt", 0
        , "UInt", 100
        , "Ptr*", 0)

    SetTimer, RemoveToolTip, -2000
return

RemoveToolTip:
    ToolTip
return