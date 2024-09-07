#!/bin/bash

# 指定图片所在的目录
INPUT_DIR="/root/git/3rd_CICID_project/images"

# 指定Python脚本的路径
PYTHON_SCRIPT="/root/git/3rd_CICID_project/python_test.py"

# 遍历目录中的所有.png文件
for INPUT_IMAGE in "$INPUT_DIR"/*.png; do
    if [ -f "$INPUT_IMAGE" ]; then
        # 生成输出文件名
        OUTPUT_IMAGE="${INPUT_IMAGE%.*}_processed.png"
        
        # 使用Python处理图片
        python3 "$PYTHON_SCRIPT" "$INPUT_IMAGE" "$OUTPUT_IMAGE"
        
        echo "Processed image saved as $OUTPUT_IMAGE"
    fi
done
