#!/bin/bash

# 检查文本文件是否存在
if [ ! -f "$1" ]; then
    echo "File not found!"
    exit 1
fi

# 输出文件基本信息
echo "File: $1"
echo "Word count: $(wc -w < "$1")"
echo "Line count: $(wc -l < "$1")"
echo "Character count: $(wc -c < "$1")"
