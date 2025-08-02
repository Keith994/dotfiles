#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##

# GDK BACKEND. Change to either wayland or x11 if having issues
BACKEND=wayland

# Check if rofi or yad is running and kill them if they are
if pidof rofi > /dev/null; then
  pkill rofi
fi

if pidof yad > /dev/null; then
  pkill yad
fi

# Launch yad with calculated width and height
GDK_BACKEND=$BACKEND yad \
    --center \
    --title="KeyBoard Cheat Sheet" \
    --no-buttons \
    --list \
    --column=Key: \
    --column=Description: \
    --column=Command: \
    --timeout-indicator=bottom \
"ESC" "关闭此界面" "" \
"" "SUPER KEY (Win按键)" "SUPER KEY" \
"  +/" "搜索绑定按键" "通过rofi搜索所有绑定按键" \
"  +Space" "软件列表" "rofi" \
"  +Enter" "终端" "kitty" \
"  +SHIFT+Enter" "下拉终端" "" \
"  +Tab" "切换浮动软件" "cyclenext" \
"  +A" "预览桌面软件" "ags" \
"  +B" "系统资源" "btop" \
"  +C" "浏览器" "microsoft edge" \
"  +D" "切换水平垂直布局" "dwindle layout" \
"  +E" "打开终端文件管理器" "yazi" \
"  +F" "软件全屏" "fullscreen" \
"  +G" "触发分组" "togglegroup" \
"  +H" "移动焦点" "左边窗口" \
"  +J" "移动焦点" "下边窗口" \
"  +K" "移动焦点" "上边窗口" \
"  +L" "移动焦点" "右边窗口" \
"  +I" "系统信息" "fastfetch" \
"  +M" "最大最小化软件" "ToggleWindowSize.sh" \
"  +N" "打开通知" "swaync-client" \
