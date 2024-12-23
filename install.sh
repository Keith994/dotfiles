#!/bin/bash

# 检查当前目录是否为根目录
if [ "$(basename "$(pwd)")" = "." ]; then
    echo "请在非根目录下运行此脚本。"
    exit 1
fi

# 获取当前工作目录
dir_path=$(pwd)
configDir="$HOME/.config"

# 遍历当前目录下的所有子目录
for sub_dir in "$dir_path"/*; do
    # 检查是否为目录
    if [ -d "$sub_dir" ]; then
        # 创建软链接到 ~/.config/
        if [ "$(basename "$sub_dir")" == "rime" ]; then
            ln -s "$sub_dir" "$HOME/.local/share/fcitx5/"
        else
            ln -s "$sub_dir" "$configDir/"
            # echo "已创建软链接: $sub_dir -> $configDir/$(basename "$sub_dir")"
        fi
    fi
done
