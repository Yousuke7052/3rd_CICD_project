#!/bin/bash

# 指定图片所在的目录
INPUT_DIR="."

# 指定Python脚本的路径
PYTHON_SCRIPT="./python_test.py"

# 确保Pillow库已经安装
if ! pip3 show pillow &> /dev/null; then
    echo "Installing Pillow..."
    sudo apt-get update
    sudo apt-get install -y python3 python3-pip
    pip3 install pillow==9.1.1
else
    echo "Pillow is already installed."
fi

# 遍历目录中的所有.png文件
for INPUT_IMAGE in $(find "$INPUT_DIR" -maxdepth 1 -type f -name "*.png"); do
    if [ -f "$INPUT_IMAGE" ]; then
        echo "Processing file: $INPUT_IMAGE"
        OUTPUT_IMAGE="${INPUT_IMAGE%.*}_processed.png"
        
        # 使用Python处理图片
        python3 "$PYTHON_SCRIPT" "$INPUT_IMAGE" "$OUTPUT_IMAGE"
        
        echo "Processed image saved as $OUTPUT_IMAGE"
    fi
done